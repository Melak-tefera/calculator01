# Flutter Calculator App

A simple calculator application built with **Flutter** and **Dart**.  
It supports basic arithmetic operations and saves calculation history locally using **Hive**.

## Features

- Addition, subtraction, multiplication, and division
- Clear calculator screen
- Calculation history page
- Save calculation history locally with Hive
- Delete individual history items
- Handle division by zero
- Simple and clean Flutter UI

## Technologies Used

- Flutter
- Dart
- Hive / Hive Flutter
- Material Design

## Screenshots

Add screenshots here after running the app:

| Calculator | History |
|------------|---------|
| ![Calculator](screenshots/calculator.png) | ![History](screenshots/history.png) |

## Project Structure

```text
lib/
├── main.dart
├── database/
│   └── calculator_history.dart
└── pages/
    ├── home_page.dart
    ├── historypage.dart
    └── tile.dart
```

## Getting Started

### Prerequisites

Make sure you have installed:

- Flutter SDK
- Dart SDK
- Android Studio or VS Code
- An Android emulator, iOS simulator, or physical device

Check your Flutter installation:

```bash
flutter doctor
```

### Installation

1. Clone this repository:

```bash
git clone [https://github.com/your-username/calculator-app.git](https://github.com/your-username/calculator-app.git)
```

2. Move into the project folder:

```bash
cd calculator-app
```

3. Install dependencies:

```bash
flutter pub get
```

4. Run the app:

```bash
flutter run
```

## How the App Works

When the user presses `=`, the app:

1. Reads the first number and second number
2. Performs the selected operation
3. Displays the result
4. Saves the calculation to Hive

Example:

```text
7 + 3 = 10
```

The calculation is stored locally under the Hive key:

```text
calhistory
```

## Hive Setup

Hive is initialized in `main.dart` before the app runs:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('history');
  runApp(const MyApp());
}
```

The history database class handles:

- Loading saved history
- Adding new calculations
- Deleting history items
- Updating Hive storage

## Future Improvements

- Add decimal number support
- Add percentage button
- Add backspace/delete button
- Add calculation history clear-all button
- Improve calculator UI for tablets and desktop
- Add unit tests for calculator logic

## Contributing

Contributions are welcome.

1. Fork the repository
2. Create a new branch:

```bash
git switch -c feature-name
```

3. Commit your changes:

```bash
git add .
git commit -m "Add new feature"
```

4. Push your branch:

```bash
git push origin feature-name
```

5. Open a pull request.

## License

This project is for learning purposes.
