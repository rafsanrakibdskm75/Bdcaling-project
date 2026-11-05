<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:6C57EC,100:55B66F&height=200&section=header&text=BD%20CALING&fontSize=54&fontColor=ffffff&animation=fadeIn&fontAlignY=38" alt="BD Caling animated header" width="100%" />

  <h3>Discover services and inspiration for every occasion</h3>

  <img src="https://readme-typing-svg.demolab.com?font=Inter&weight=500&size=18&pause=1200&color=6C57EC&center=true&vCenter=true&width=560&lines=Browse+curated+service+categories;Explore+ideas+for+special+occasions;Built+with+Flutter" alt="Animated project tagline" />

  <br />

  <img src="https://img.shields.io/badge/Flutter-app-55B66F?logo=flutter&logoColor=white" alt="Flutter app" />
  <img src="https://img.shields.io/badge/Dart-3.9.2%2B-0175C2?logo=dart&logoColor=white" alt="Dart 3.9.2 or newer" />
  <a href="https://github.com/rafsanrakibdskm75/Bdcaling-project">
    <img src="https://img.shields.io/github/stars/rafsanrakibdskm75/Bdcaling-project?style=social" alt="GitHub stars" />
  </a>
</div>

## About

**BD Caling** is a Flutter app prototype for discovering services and ideas for events and personal occasions. Its home screen brings together service categories, occasion shortcuts, and sample service cards in a single browsable interface.

The current app is a UI prototype: its listing content is defined in the app, images are loaded from remote URLs, and the login screen is a visual screen without authentication wiring.

## Highlights

- Auto-playing featured banner carousel
- Horizontally browsable categories, including Aesthetics, Cuisine & Pastry, and Fashions
- Occasion shortcuts for Wedding, Birthday, and Baby Shower
- Sample service cards with pricing and ratings
- Login screen UI

## Built with

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)
- [`carousel_slider`](https://pub.dev/packages/carousel_slider)

## Getting started

### Requirements

- Flutter SDK with Dart **3.9.2 or newer**
- An emulator, simulator, or connected device

### Run the app

```bash
git clone https://github.com/rafsanrakibdskm75/Bdcaling-project.git
cd Bdcaling-project
flutter pub get
flutter run
```

## Project structure

```text
lib/
├── main.dart                 # App entry point
├── Home/
│   ├── home_screen.dart      # Browse and featured content
│   └── Login_screen.dart     # Login UI
└── winget/
    ├── Card_view_screen.dart # Service listing card
    ├── Item_card_screen.dart # Occasion card
    ├── catagory_card.dart    # Category card
    └── Navigation_Drawer.dart
```

## Current scope

This repository currently focuses on the app's presentation layer. Listings are sample data in the home screen, and sign-in, search, and card actions are not connected to backend services.

## Contributing

Contributions and suggestions are welcome. Open an issue to discuss a change, or submit a pull request with a clear description of what it adds.

<div align="center">
  <sub>Made with Flutter · BD Caling</sub>
</div>
