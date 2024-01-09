import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sonrize_web/ui/screens/screen_template.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ContactScreen extends StatefulWidget {
  ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final nameController = TextEditingController();

  final subjectController = TextEditingController();

  final emailController = TextEditingController();

  final messageController = TextEditingController();

  bool isSending = false;

  bool sentSuccessfully = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future sendEmail() async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    const service_id = "service_ist9aas";
    const template_id = "template_2lsgcm3";
    const user_id = "7uDrzfewkdGYD3ilv";
    final response = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          "service_id": service_id,
          "template_id": template_id,
          "user_id": user_id,
          "template_params": {
            "user_name": nameController.text,
            "user_email": emailController.text,
            "user_subject": subjectController.text,
            "user_message": messageController.text,
          }
        }));

    await Future.delayed(Duration(milliseconds: 500));

    setState(() {
      isSending = true;
    });
    if (response.statusCode == 200) {
      setState(() {
        isSending = false;
        sentSuccessfully = true;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Email has been sent!'),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      setState(() {
        isSending = false;
        sentSuccessfully = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to send email. Please try again.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
    return response.statusCode;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTemplate(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    prefixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(),
                  ),
                ),
                const Gap(20),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(
                            r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
                        .hasMatch(value)) {
                      return 'Please enter a valid email: valid@email.com';
                    }
                    return null;
                  },
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'E-Mail',
                    prefixIcon: Icon(Icons.email_rounded),
                    border: OutlineInputBorder(),
                  ),
                ),
                const Gap(20),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a subject';
                    }
                    return null;
                  },
                  controller: subjectController,
                  decoration: const InputDecoration(
                    labelText: 'Subject',
                    prefixIcon: Icon(Icons.subject_rounded),
                    border: OutlineInputBorder(),
                  ),
                ),
                const Gap(20),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your message';
                    }
                    return null;
                  },
                  controller: messageController,
                  minLines: 3,
                  maxLines: null,
                  decoration: const InputDecoration(
                    labelText: 'Message',
                    prefixIcon: Icon(Icons.message_rounded),
                    border: OutlineInputBorder(),
                  ),
                ),
                const Gap(20),
                ElevatedButton(
                  onPressed: isSending
                      ? null
                      : () {
                          if (formKey.currentState!.validate()) {
                            sendEmail();
                          }
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: sentSuccessfully ? Colors.green : null,
                  ),
                  child: sentSuccessfully
                      ? const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('I will reply as soon as possible',
                                style: TextStyle(color: Colors.white)),
                            SizedBox(width: 8),
                            Icon(Icons.check, color: Colors.white),
                          ],
                        )
                      : const Text('Send'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
