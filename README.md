# Fitness App

A Flutter application that helps users track their fitness progress. This app displays various fitness activities, steps taken, and other relevant analytics. The UI is designed to be clean and intuitive, with a focus on providing a pleasant user experience.

## Features

- **Track Progress**: View your fitness activities and steps taken.
- **Analytics**: Visualize your fitness data through charts and graphs.
- **Motivational Messages**: Encouraging messages to keep you motivated.
- **Dynamic Data**: Randomly generated data for demonstration purposes.
- **Beautiful UI**: Clean and modern user interface.

## Screenshots

![Screenshot 1](screenshot1.png)
![Screenshot 2](screenshot2.png)

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/fitness_app.git
   cd fitness_app
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the app**:
   ```bash
   flutter run
   ```

## Usage

### Home Page

The Home Page displays your fitness progress and activities. It includes the following sections:

- **Header**: Shows the app name and a motivational message.
- **Your Progress**: Displays various fitness activities and steps taken in a week.
- **Activity List**: Scrollable list of fitness activities with random data for steps.
- **Weekly Summary**: A bar chart showing the steps taken each day of the week.
- **Save the Planet**: A call-to-action button for environmental awareness.

### Code Overview

- **main.dart**: The entry point of the application.
- **home_page.dart**: Contains the UI code for the Home Page.
- **constants.dart**: Contains color, icon, and string constants used in the app.

### Color Palette

The color palette used in this app includes light pastel colors for a calming and pleasant user experience.

```dart
List<Color> containerColors = [
  const Color(0xFFE7E4FD), // Light Purple/Lavender for Walk Container
  const Color(0xFFE4F8E8), // Light Green/Mint for Trees Container
  const Color(0xFF98C8FF), // Light Blue for Progress Bar 1
  const Color(0xFF8EB8FF), // Light Blue for Progress Bar 2
  const Color(0xFF82A8FF), // Light Blue for Progress Bar 3
  const Color(0xFF7698FF), // Light Blue for Progress Bar 4
  const Color(0xFF6A88FF), // Light Blue for Progress Bar 5
  const Color(0xFF5E78FF), // Light Blue for Progress Bar 6
  const Color(0xFF000000), // Black for Save the Planet Button Background
];
```

### Dependencies

This app uses the following packages:

```yaml
dependencies:
  flutter:
    sdk: flutter
  font_awesome_flutter: ^10.7.0
  flutter_bloc: ^8.1.6
```

## Contribution

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or feedback, please contact:

- **Author**: Your Name
- **Email**: your.email@example.com
- **GitHub**: [yourusername](https://github.com/yourusername)

---

Thank you for checking out the Fitness App! Keep tracking your progress and stay motivated!