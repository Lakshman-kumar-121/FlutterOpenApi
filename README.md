# WeatherMate

WeatherMate is a Flutter application that provides users with real-time weather updates for their location. The app features Firebase Authentication for secure user login and registration using email and password. Additionally, it integrates with OpenAPI Weather to fetch and display weather data.

## Features

- **User Authentication**: Secure user registration and login using Firebase Authentication.
- **Real-Time Weather Data**: Fetches and displays current weather information for the user's location using OpenAPI Weather.
- **Weather Details**: Shows weather, wind speed, gust, pressure, and humidity.
- **User-Friendly Interface**: Simple and intuitive design for a seamless user experience.
- **Cross-Platform**: Runs on both Android and iOS devices.

## Screenshots

![Login Screen](https://github.com/Lakshman-kumar-121/FlutterOpenApi/blob/main/appimages/1.jpg)
*Login Screen: Secure login with Firebase Authentication.*

![Sign Up Screen](https://github.com/Lakshman-kumar-121/FlutterOpenApi/blob/main/appimages/2.jpg)
*Sign Up Screen: Secure user registration with Firebase Authentication.*

![Home Screen](https://github.com/Lakshman-kumar-121/FlutterOpenApi/blob/main/appimages/3.jpg)
*Home Screen: Displays real-time weather data including weather, wind speed, gust, pressure, and humidity.*

## Installation

To get started with WeatherMate, follow these steps:

1. Clone the repository from GitHub.
2. Install the necessary dependencies for the Flutter project.
3. Set up Firebase by creating a new project in the Firebase Console, adding your Android and/or iOS app to the Firebase project, and downloading the `google-services.json` file (for Android) and `GoogleService-Info.plist` file (for iOS). Place these files in the appropriate directories (`android/app` and `ios/Runner` respectively). Enable Email/Password authentication in the Firebase console under the Authentication section.
4. Configure OpenAPI Weather by signing up for an API key at OpenAPI Weather and adding the API key to the appropriate file in your project.

## Usage

- **Login/Sign Up**: Users can create an account or log in using their email and password.
- **Weather Updates**: After logging in, users can view the current weather information including weather, wind speed, gust, pressure, and humidity.

## Contributing

Contributions are welcome! If you find any bugs or have feature requests, please create an issue or submit a pull request.

To contribute:
1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Commit your changes to the new branch.
4. Push the changes to your forked repository.
5. Open a pull request to the main repository.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgements

- [Flutter](https://flutter.dev/)
- [Firebase](https://firebase.google.com/)
- [OpenAPI Weather](https://openweathermap.org/api)
