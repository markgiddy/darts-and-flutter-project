AfyaConnect
AfyaConnect is a Flutter-based mobile application designed to provide users with tools for wellness tracking, mental health support through a chatbot, and a clinic finder.
Features
Wellness Diary: Log your daily mood, blood pressure, blood sugar, and set medicine reminders.

Chatbot: An interactive chatbot for mental health support, offering pre-defined responses for common emotional states and providing hotline information.

Clinic Finder: Discover nearby clinics, view their locations, distances, ratings, and whether they offer free or affordable services.

Project Structure
The project is structured into several key Dart files:

main.dart: The entry point of the Flutter application, setting up the main AfyaConnectApp widget and defining the app's theme.

home_screen.dart: Manages the navigation between different sections of the app using a BottomNavigationBar. It hosts the Wellness Diary, Chatbot, and Clinic Finder screens.

diary_screen.dart: Implements the Wellness Diary functionality, allowing users to input and save daily health logs.

chatbot_screen.dart: Contains the logic and UI for the interactive chatbot, handling user input and providing automated responses.

clinic_finder_screen.dart: Displays a list of pre-defined clinics with their details, including location, distance, and service cost.

pubspec.yaml: Defines the project's dependencies, metadata, and Flutter-specific configurations.

widget_test.dart: Contains example unit tests for Flutter widgets.



---

## 🛠️ Setup Instructions

Follow these steps to run the project locally:

### 1. ✅ Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)
- [Visual Studio Code](https://code.visualstudio.com/) or Android Studio
- Android Emulator or physical device
- Internet Connection

---

### 2. 📦 Install Flutter & Dart Plugins

In **VS Code**:
- Go to Extensions (Ctrl + Shift + X)
- Install:
  - `Flutter`
  - `Dart`

---

### 3. 📂 Open the Project in VS Code

- Open VS Code
- Click `File > Open Folder`
- Select the extracted `afya_connect` folder

---

### 4. 🔄 Get Dependencies

Open the terminal in VS Code and run:

```bash
flutter pub get

5. ▶️ Run the App
Make sure your emulator or physical device is connected. Then run:
flutter run

Contributing
Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

Fork the Project

Create your Feature Branch (git checkout -b feature/AmazingFeature)

Commit your Changes (git commit -m 'Add some AmazingFeature')

Push to the Branch (git push origin feature/AmazingFeature)

Open a Pull Request

📜 License
This project is open-source and free to use for educational and non-commercial purposes.




