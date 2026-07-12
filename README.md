# Flutter Navigation 2.0 Demo

A simple Flutter application built to demonstrate the **core concepts of Flutter Navigator 2.0**. This project showcases how data can be passed between multiple screens while navigating using Flutter's modern declarative navigation approach.

---

## 📌 Project Objective

The primary objective of this project is to understand and practice **Flutter Navigation 2.0** by implementing navigation between multiple pages and passing user input from one screen to another.

---

## 🚀 Features

* 🏠 **Home Page**

  * Acts as the entry point of the application.
  * Contains a **"Go to Dashboard"** button positioned at the **bottom-right**.
  * Navigates to the Dashboard page.

* 📋 **Dashboard Page**

  * Contains a **dialog box/input field** where the user can enter text.
  * Stores the entered text.
  * Includes a **"Go to Product"** button positioned at the **bottom-left**.
  * Passes the entered data to the Product page.

* 📦 **Product Page**

  * Displays the text entered on the Dashboard page.
  * Contains a **"Go Back to Home"** button positioned at the **bottom-left**.
  * Returns the user to the Home page.

---

## 📂 Project Structure

```text
lib/
├── main.dart
├── home.dart
├── dashboard.dart
└── product.dart
```

---

## 🛠️ Technologies Used

* Flutter
* Dart
* Navigator 2.0 (Declarative Navigation)

---

## 📱 Navigation Flow

```text
Home
  │
  ▼
Dashboard
  │
  │ (User enters text)
  ▼
Product
  │
  ▼
Home
```

---

## 🔄 Data Flow

1. User opens the **Home** page.
2. Navigates to the **Dashboard**.
3. Enters text into the dialog/input field.
4. Presses **Go to Product**.
5. The entered text is passed to the **Product** page.
6. The Product page displays the received text.
7. User can navigate back to the **Home** page.

---

## 🎯 Learning Outcomes

This project demonstrates the following Flutter Navigation 2.0 concepts:

* Declarative navigation
* Route management
* Navigation stack handling
* Screen-to-screen navigation
* Passing data between pages
* Managing application state during navigation
* Building a simple multi-page Flutter application

---

## ▶️ Getting Started

Clone the repository:

```bash
git clone https://github.com/your-username/flutter-navigation-2-demo.git
```

Navigate to the project directory:

```bash
cd flutter-navigation-2-demo
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

---

## 📖 Purpose

This repository was created as a **learning project** to gain hands-on experience with **Flutter Navigator 2.0**. It focuses on understanding the navigation lifecycle, page transitions, and passing data across screens in a clean and structured manner.

---

## 👨‍💻 Author

**Abdullah Al-Yamin**

---

## ⭐ If you found this project helpful, consider giving it a star!
