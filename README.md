# Flutter Challenge
[testting.webm](https://github.com/alghanykennedy/flutter_challange/assets/82708330/08501fbb-8706-4e95-9488-718ca34f310a)

## Description
Flutter challenge using GetX CLI with clean code.

## Features

### 1. Home Screen
This feature displays a visually detail button, text widget, and preview image.

### 2. Detail Screen
The Detail screens displays a timer widget (1 minute). If timeout, return to the home page with a timeout message displayed on the text widget, a preview image (static image) with an accept button on top. When clicked, it navigates to the home page displaying a success message on the text widget and showing the image on the image widget. And last is list widget containing emojis (network SVG images) that can be scrolled vertically and dragged into the image preview to become part of the image (add emoji).

## Project Structure
```
|-- lib
    |-- app
        |-- core
            |-- widgets
            |-- global constant variables or classes
        |-- data
            |-- models
        |-- modules
            |-- features
                |-- detail_screen
                |-- home
                    |-- bindings
                    |-- controllers
                    |-- views
        |-- routes (Code generated via package:get_cli/get_cli.dart)
            |-- app_pages
            |-- app_routes
    |-- main.dart
```

## How to Run the App

- Clone the repository
- Ensure you have Flutter last version installed and set up
- Run `flutter pub get` to fetch the project dependencies
- Use `flutter run` to start the application

  ## Technologies and Packages Used

- Flutter (3.15.0-15.2.pre version)
- [GetX](https://github.com/jonataslaw/getx) for state management 
- [flutter_svg](https://pub.dev/packages/flutter_svg) SVG rendering and widget library for Flutter
- [intl](https://pub.dev/packages/intl) Provides internationalization and localization facilities
