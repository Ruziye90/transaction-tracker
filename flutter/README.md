```markdown
# Transaction Tracker Mobile App

## Overview
This is a mobile application built with Flutter for tracking transactions. It allows users to log in, view their transaction history, and submit new transaction records to a Spring Boot backend.

## Requirements
- Flutter SDK (version 2.0 or higher)
- Dart SDK
- An IDE (like Android Studio or Visual Studio Code)
- An emulator or physical device for testing
- Internet connection (for API calls)

## Setup Instructions

### 1. Clone the Repository
```bash
cd transaction-tracker-flutter
```

### 2. Install Dependencies
Run the following command to install the required packages:
```bash
flutter pub get
```

### 3. Configure the API Endpoint
1. **Open the App:** Launch the app on your emulator or physical device.
2. **Navigate to Configuration Menu(Accessed through login page):** Access the menu for configuring the IP address and port number.
3. **Enter the API Details:**
   - **IP Address:** Enter the IP address of your Spring Boot backend server.
   - **Port Number:** Enter the port number (default is `8080`).
4. **Save Configuration:** Ensure to save the settings to apply them for API calls.

### 4. Run the Application
You can run the app using the following command:
```bash
flutter run
```
Alternatively, you can run it from your IDE's run configuration.

### 5. Testing Features

#### Login Feature
- **Navigate to the Login Screen:** Open the app and go to the login page.
- **Enter Credentials:**
  - **Username:** `test`
  - **Password:** `password`
- **Submit:** Tap the login button.
- **Expected Result:** You should be redirected to the main transaction view screen if the credentials are correct.

#### Add Transaction Feature
- **Navigate to Add Transaction Screen:** Once logged in, find the option to add a new transaction.
- **Fill in the Form:**
  - **Date:** Enter a valid date (e.g., `2022-01-01`).
  - **Amount:** Enter a numerical value (e.g., `100.0`).
  - **Description:** Enter a brief description (e.g., `Test transaction`).
- **Submit:** Tap the button to add the transaction.
- **Expected Result:** The new transaction should be added to the list, and you should see a confirmation message.

## Notes
- Ensure your Spring Boot backend is running before testing the mobile app.
- Use the correct IP address and port number for successful API calls.


This README provides clear instructions for configuring the IP address and port number, as well as testing the login and add transaction features in your Flutter app. Let me know if you need any further modifications!