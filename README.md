# Eco Footprint Tracker (Flutter APP)

**Eco Footprint Tracker** is a Flutter application that allows users to calculate their daily carbon footprint based on food choices, transportation habits, and energy usage. 
The app provides simple input sliders and dropdowns, calculates estimated CO₂ emissions, and visualizes weekly impact using interactive bar charts.

## 🌱 Features

* 🍽️ Select your daily food type (vegan, vegetarian, mixed, meat-heavy)
* 🚗 Enter daily transportation distance (km)
* 🔌 Estimate daily home energy usage (kWh)
* 📊 View estimated carbon footprint in kg of CO₂
* 📈 Weekly emissions chart using `fl_chart`
* 🎯 Personalized feedback based on your results
* 🧪 Clean UI optimized for daily use

## 🚀 Getting Started

### Prerequisites

* Flutter SDK installed
* Android Studio or Visual Studio Code

### Installation

```bash
git clone https://github.com/bektas-sari/eco_footprint_tracker.git
cd eco_footprint_tracker
flutter pub get
flutter run
```

## 📂 Project Structure

```
lib/
├── main.dart            # App entry point
├── home_screen.dart     # Input interface
├── result_screen.dart   # Displays result and suggestions
├── stats_screen.dart    # Weekly CO₂ chart
```

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  fl_chart: ^0.63.0
```

## 📄 License

This project is licensed under the MIT License.

---

