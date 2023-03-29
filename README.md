# Material Text Field
[![pub package](https://img.shields.io/pub/v/material_text_fields.svg)](https://pub.dev/packages/material_text_fields)
[![license](https://img.shields.io/badge/license-MIT-green)](https://github.com/DevCrew-io/material-text-fields/blob/main/LICENSE)
![](https://img.shields.io/badge/Code-Dart-informational?style=flat&logo=dart&color=29B1EE)
![](https://img.shields.io/badge/Code-Flutter-informational?style=flat&logo=flutter&color=0C459C)

Material Text Field is a customizable widget for text input values in Dart. You can define the styling of the text field in your app's theme file or create multiple text fields with different styling. You can easily create text input fields with customizable styling and behaviors.
## Installation
To use Material Text Field in your Dart project, add the following dependency to your "pubspec.yaml" file

  ```dart
dependencies:
  material_text_fields: ^<latest-version>
```
Then run ```flutter pub get``` to install the package.

In your library add the following import

```dart
import 'package:material_text_fields/material_text_fields.dart';
```

## Usage
To use Material Text Field in your Flutter app, import the package and create a new instance of the MaterialTextField widget

  ```dart
             MaterialTextField(
                keyboardType: TextInputType.emailAddress,
                hint: 'Email',
                textInputAction: TextInputAction.next,
                prefixIcon: Image.asset('assets/images/ic_email.png'),
                controller: _emailTextController,   // TextEditingController _emailTextController = TextEditingController()
                validator: FormValidation.emailTextField,
              )
```

You can create multiple text fields with different styling with providing "theme" attribute.

  ```dart
              MaterialTextField(
                keyboardType: TextInputType.text,
                labelText: 'Name',
                theme: FilledOrOutlinedTextTheme(
                  enabledColor: Colors.grey,
                  focusedColor: Colors.green,
                  fillColor: Colors.transparent,
                  // You can use all properties of FilledOrOutlinedTextTheme
                  // to decor text field
                ),
                prefixIcon: Image.asset('assets/images/ic_email.png'),
              )
```

## Advance Usage

With all possible params

  ```dart
               MaterialTextField(
                  keyboardType: TextInputType.emailAddress,
                  hint: 'Email',
                  textInputAction: TextInputAction.next,
                  prefixIcon: Image.asset('assets/images/ic_lock.png'),
                  controller: _emailTextController,
                  validator: FormValidation.emailTextField,
                  onChanged: (text) {
                    print('First text field: $text');
                  },
                  suffixIcon: Image.asset('assets/images/ic_lock.png'),
                  enabled: false,
                  obscureText: true,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  labelText: 'Password',
                  theme: FilledOrOutlinedTextTheme(
                    enabledColor: Colors.grey,
                    focusedColor: Colors.green,
                    fillColor: Colors.transparent,
                  ) // you can use theme param to differ this text field from app level theming
                )
```

## Theming

To define the styling of the text field, you can either use the app-level theme file or specify the styling directly on the widget.

### App-level theme

You can use MaterialTextFieldTheme class for text field theming. This Theme class which define theming for Filled/Outlined and underline text field theming. You can use this class for text field theming

#### Example 1 (Filled Text Field)

Here is an example of filled field

 ```dart
     MaterialTextField(
         keyboardType: TextInputType.emailAddress,
         hint: 'Email',
         textInputAction: TextInputAction.next,
         prefixIcon: const Icon(Icons.email_outlined),
         suffixIcon: const Icon(Icons.check),
         controller: _emailTextController,
         validator: FormValidation.emailTextField,
       )
```

To define the text field style in your app-level theme file, add the following code to your ThemeData:

  ```dart
      ThemeData(
       inputDecorationTheme: FilledOrOutlinedTextTheme(
        radius: 16,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        errorStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        fillColor: Colors.red.withAlpha(50),
        suffixIconColor: Colors.green,
        prefixIconColor: Colors.blue,
         ),
      );
```

#### Output

![Alt text](https://user-images.githubusercontent.com/93918747/225826444-b3c01d7e-5693-4cfe-b804-406ec1492c15.png)

#### Example 2 (Filled Outlined Text Field)
Here is an example of filled text field with outlined border (enable and focus border)

 ```dart
     MaterialTextField(
         keyboardType: TextInputType.emailAddress,
         hint: 'Email',
         textInputAction: TextInputAction.next,
         prefixIcon: const Icon(Icons.email_outlined),
         suffixIcon: const Icon(Icons.check),
         controller: _emailTextController,
         validator: FormValidation.emailTextField,
        )
```

To define the text field style in your app-level theme file, add the following code to your ThemeData:

  ```dart
      ThemeData(
        inputDecorationTheme: FilledOrOutlinedTextTheme(
        radius: 30,
        contentPadding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        errorStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        fillColor: Colors.grey.withAlpha(30),
        suffixIconColor: Colors.red,
        prefixIconColor: Colors.blue,
        enabledColor: Colors.grey,
        focusedColor: Colors.green
       ),
    );
```

#### Output

![Alt text](https://user-images.githubusercontent.com/93918747/225827800-38f7bfe1-06f4-414b-8f37-c95d8affa19c.png)

#### Example 3 (Outlined Text Field)
Here is an example of Outlined text field

 ```dart
   MaterialTextField(
      keyboardType: TextInputType.emailAddress,
      hint: 'Email',
      labelText: 'Email',
      textInputAction: TextInputAction.next,
      prefixIcon: const Icon(Icons.email_outlined),
      controller: _emailTextController,
      validator: FormValidation.emailTextField,
     )
```

To define the text field style in your app-level theme file, add the following code to your ThemeData:

 ```dart
      ThemeData(
        inputDecorationTheme: FilledOrOutlinedTextTheme(
         radius: 8,
         contentPadding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
         errorStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
         fillColor: Colors.transparent,
         prefixIconColor: Colors.green,
         enabledColor: Colors.grey,
         focusedColor: Colors.green,
         floatingLabelStyle: const TextStyle(color: Colors.green),
         width: 1.5,
         labelStyle: const TextStyle(fontSize: 16, color: Colors.black),
      );
```

#### Output

![Alt text](https://user-images.githubusercontent.com/93918747/225830150-da423061-a589-4448-8064-e0782b4e0b66.png)

#### Example 4 (Underline/Default Text Field)

Here is an example of Underline/default text field

 ```dart
 MaterialTextField(
      keyboardType: TextInputType.emailAddress,
      hint: 'Email',
      textInputAction: TextInputAction.next,
      suffixIcon: const Icon(Icons.email_outlined),
      controller: _emailTextController,
      validator: FormValidation.emailTextField,
   )
```

If you want to apply theming on underline/default field, Use this  MaterialTextFieldTheme.borderlessTextTheme function.

 ```dart
ThemeData(
    inputDecorationTheme: BorderlessTextTheme(
    errorStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    prefixIconColor: Colors.green,
    enabledColor: Colors.grey,
    focusedColor: Colors.green,
    floatingLabelStyle: const TextStyle(color: Colors.green),
    width: 1,
  );
```

#### Output

![Alt text](https://user-images.githubusercontent.com/93918747/225832127-c34ffdd3-7e0b-4f70-a01a-5a83a02a63c4.png)

#### Example 5 (Labeled Text Field)

Example of labeled text field

 ```dart
     LabeledTextField(
        title: 'Password',
        labelSpacing: 8,
        titleStyling: const TextStyle(
         fontSize: 16,
         color: Colors.black,
         fontWeight: FontWeight.w700,
            ),
            child: MaterialTextField(
                 keyboardType: TextInputType.emailAddress,
                 hint: 'Password',
                 textInputAction: TextInputAction.done,
                 obscureText: true,
                 theme: FilledOrOutlinedTextTheme(
                    fillColor: Colors.green.withAlpha(50),
                    radius: 12,
                  ),
                  prefixIcon: Image.asset('assets/images/ic_lock.png'),
                  suffixIcon: const Icon(Icons.visibility),
                  controller: _passwordTextController,
                  validator: FormValidation.requiredTextField,
                ),
              );
```

#### Output

![Alt text](https://user-images.githubusercontent.com/93918747/225833980-87f74870-86ae-4385-af4c-30d64357ca35.png)

### Widget level theme
You can specify the styling directly on the widget

```dart
    MaterialTextField(
        keyboardType: TextInputType.text,
        hint: 'Full Name',
        labelText: 'Name',
        theme: FilledOrOutlinedTextTheme(
            enabledColor: Colors.grey,
            focusedColor: Colors.green,
            fillColor: Colors.transparent,
                ),
        textInputAction: TextInputAction.next,
        prefixIcon: Image.asset('assets/images/ic_email.png'),
        validator: FormValidation.requiredTextField,
        );
```

## Author
[DevCrew.IO](https://devcrew.io/)

<h3 align="left">Connect with Us:</h3>
<p align="left">
<a href="https://devcrew.io" target="blank"><img align="center" src="https://devcrew.io/wp-content/uploads/2022/09/logo.svg" alt="devcrew.io" height="35" width="35" /></a>
<a href="https://www.linkedin.com/company/devcrew-io/mycompany/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="mycompany" height="30" width="40" /></a>
<a href="https://www.facebook.com/devcrew.io" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="devcrew.io" height="30" width="40" /></a>
<a href="https://www.instagram.com/devcrew.io" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/instagram.svg" alt="devcrew.io" height="30" width="40" /></a>
<a href="https://github.com/DevCrew-io" target="blank"><img align="center" src="https://cdn-icons-png.flaticon.com/512/733/733553.png" alt="DevCrew-io" height="32" width="32" /></a>
</p>


## Contributing 
Contributions, issues, and feature requests are welcome! 
## Show your Support 
Give a star if this project helped you. 

## Bugs and feature requests
Have a bug or a feature request? Please first search for existing and closed issues.
If your problem or idea is not addressed yet, [please open a new issue](https://github.com/DevCrew-io/material-text-fields/issues/new).

## Copyright & License
Code copyright 2023–2024 [DevCrew I/O](https://devcrew.io/).
Code released under the [MIT license](https://github.com/DevCrew-io/material-text-fields/blob/main/LICENSE).



