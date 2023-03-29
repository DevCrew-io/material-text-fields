# Material Text Field

## Screenshots

|                                                                        |                                                                  |                                                                   |
|:----------------------------------------------------------------------:|:----------------------------------------------------------------:|:-----------------------------------------------------------------------|
| ![Alt text](https://user-images.githubusercontent.com/93918747/225885735-061511b1-11cb-469f-9c4d-e18cb2f0a5e5.png) | ![Alt text](https://user-images.githubusercontent.com/93918747/225885922-6a11a1b1-e3a0-4586-8d7d-b229f964d444.png) | ![Alt text](https://user-images.githubusercontent.com/93918747/225886138-0712113d-9813-4d90-b50b-3c25407febcf.png) |

  ```dart
  
final GlobalKey<FormState> _key = GlobalKey<FormState>();

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
  
```  
  ```dart
ThemeData(
  brightness: Brightness.light,
  inputDecorationTheme: FilledOrOutlinedTextTheme(
    radius: 16
   ),
);

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
                theme: FilledOrOutlinedTextTheme(
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
                theme: BorderlessTextTheme(),
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
