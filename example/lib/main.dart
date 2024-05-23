import 'package:example/theme/light_theme.dart';
import 'package:example/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_text_fields/labeled_text_field.dart';
import 'package:material_text_fields/material_text_fields.dart';
import 'package:material_text_fields/theme/material_text_field_theme.dart';
import 'package:material_text_fields/utils/form_validation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Text Fields',
      theme: lightTheme,
      home: const MyHomePage(title: 'Material Text Fields'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _key,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                MaterialTextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  hint: "Email",
                  textInputAction: TextInputAction.next,
                  prefixIcon: Image.asset(ImagePath.icEmail),
                  controller: _emailController,
                  validator: FormValidation.emailTextField,
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialTextField(
                  keyboardType: TextInputType.text,
                  hint: "Full Name",
                  labelText: "Name",
                  theme: FilledOrOutlinedTextTheme(
                    enabledColor: Colors.grey,
                    focusedColor: Colors.green,
                    fillColor: Colors.transparent,
                  ),
                  textInputAction: TextInputAction.next,
                  prefixIcon: Image.asset(ImagePath.icEmail),
                  validator: FormValidation.requiredTextField,
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialTextField(
                  keyboardType: TextInputType.number,
                  hint: "age",
                  theme: BorderlessTextTheme(),
                  textInputAction: TextInputAction.next,
                  validator: FormValidation.requiredTextField,
                ),
                const SizedBox(
                  height: 20,
                ),
                LabeledTextField(
                  title: 'Password',
                  textField: MaterialTextField(
                    keyboardType: TextInputType.emailAddress,
                    hint: 'Password',
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    theme: FilledOrOutlinedTextTheme(
                      fillColor: Colors.red.withAlpha(50),
                      radius: 80,
                    ),
                    prefixIcon: Image.asset(ImagePath.icLock),
                    suffixIcon: const Icon(Icons.visibility),
                    controller: _passwordController,
                    validator: FormValidation.requiredTextField,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: onSubmitBtnPressed,
                  child: const Text('Submit'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  onSubmitBtnPressed() {
    if (_key.currentState?.validate() == true) {
      // perform some task.
    }
  }
}
