# Material Text Field

## Screenshots

|                                Material                                |                               Text                               | Field                                                                  |
|:----------------------------------------------------------------------:|:----------------------------------------------------------------:|:-----------------------------------------------------------------------|
| ![Alt text](/screenshots/screenshot1.png?raw=true "Onboarding screen") | ![Alt text](/screenshots/screenshot2.png?raw=true "Home Screen") | ![Alt text](/screenshots/screenshot3.png?raw=true "My Courses screen") |

  ```dart
  
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
```  

  ```dart

   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Text Field'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _key,
          child: Column(
            children: [
              const SizedBox(height: 16),
              MaterialTextField(
                keyboardType: TextInputType.emailAddress,
                hint: "Email",
                textInputAction: TextInputAction.next,
                prefixIcon: Image.asset(ImagePath.icEmail),
                controller: _emailController,
                validator: FormValidation.emailTextField,
              ),
              const SizedBox(height: 20),
              MaterialTextField(
                keyboardType: TextInputType.text,
                hint: "Full Name",
                labelText: "Name",
                theme: MaterialTextFieldTheme.filledOrOutlinedTextTheme(
                  enabledColor: Colors.grey,
                  focusedColor: Colors.green,
                  fillColor: Colors.transparent,
                ),
                textInputAction: TextInputAction.next,
                prefixIcon: Image.asset(ImagePath.icEmail),
                validator: FormValidation.requiredTextField,
              ),
              const SizedBox(height: 20),
              MaterialTextField(
                keyboardType: TextInputType.number,
                hint: "age",
                theme: MaterialTextFieldTheme.borderlessTextTheme(),
                textInputAction: TextInputAction.next,
                validator: FormValidation.requiredTextField,
              ),
              const SizedBox(height: 20),
              LabeledTextField(
                title: 'Password',
                child: MaterialTextField(
                  keyboardType: TextInputType.emailAddress,
                  hint: 'Password',
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  theme: MaterialTextFieldTheme.filledOrOutlinedTextTheme(
                    fillColor: Colors.red.withAlpha(50),
                    radius: 80,
                  ),
                  prefixIcon: Image.asset(ImagePath.icLock),
                  suffixIcon: const Icon(Icons.visibility),
                  controller: _passwordController,
                  validator: FormValidation.requiredTextField,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: onSubmitBtnPressed,
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }

```  

  ```dart
  
    onSubmitBtnPressed() {
    if (_key.currentState?.validate() == true) {
      // perform some task.
    }
  }
  
```    
