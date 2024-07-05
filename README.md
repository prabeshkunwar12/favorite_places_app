# Favorite Places App

The Favorite Places App allows you to capture images of your favorite places and save their locations using the Google Maps API.

## Features

- Capture images of favorite places using the camera app.
- Save and display the location of each place on a map.
- View and interact with locations using Google Maps.
- Store data locally using SQLite.

## Tech Stack

- **Flutter**: The primary framework used to build the app.
- **Flutter Riverpod**: State management for creating providers.
- **Image Picker**: To capture images using the camera app.
- **Google Maps API**: To get, view, show, and interact with locations on a map.
- **Path**: To get and modify the path of the files.
- **Sqflite**: To create a database file in the device storage.
- **Location**: To get latitude and longitude using the device GPS.

## Getting Started

### Prerequisites

Ensure you have the following installed on your development machine:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio) or [Xcode](https://developer.apple.com/xcode/)
- An emulator or a physical device for testing

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/prabeshkunwar12/favorite_places_app.git
   cd favorite_places_app
   ```

2. **Install dependencies:**

   ```bash
   flutter pub get
   ```

3. **Set up for iOS:**

   ```bash
   cd ios
   pod install
   cd ..
   ```

### Configuration

1. **Google Maps API Key:**

   - Obtain an API key from the [Google Cloud Console](https://console.cloud.google.com/).
   - Add the API key to your `android/app/src/main/AndroidManifest.xml`:

     ```xml
     <manifest>
         <application>
             <meta-data
                 android:name="com.google.android.geo.API_KEY"
                 android:value="YOUR_API_KEY"/>
         </application>
     </manifest>
     ```

   - Add the API key to your `ios/Runner/Info.plist`:

     ```xml
     <dict>
         <key>io.flutter.embedded_views_preview</key>
         <true/>
         <key>GMSApiKey</key>
         <string>YOUR_API_KEY</string>
     </dict>
     ```

2. **Permissions:**

   - Request camera, location, and storage permissions in your `android/app/src/main/AndroidManifest.xml`:

     ```xml
     <manifest>
         <uses-permission android:name="android.permission.CAMERA"/>
         <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
         <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
     </manifest>
     ```

   - Request camera, location, and storage permissions in your `ios/Runner/Info.plist`:

     ```xml
     <dict>
         <key>NSCameraUsageDescription</key>
         <string>We need access to your camera to take pictures of your favorite places.</string>
         <key>NSLocationWhenInUseUsageDescription</key>
         <string>We need access to your location to save your favorite places.</string>
         <key>NSPhotoLibraryUsageDescription</key>
         <string>We need access to your photo library to save your pictures.</string>
     </dict>
     ```

### Running the App

1. **Run on an Android emulator or a physical device:**

   ```bash
   flutter run
   ```

2. **Run on an iOS simulator or a physical device:**

   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── main.dart
├── models/
│   └── place.dart
├── providers/
│   └── place_provider.dart
├── screens/
│   ├── add_place_screen.dart
│   ├── place_detail_screen.dart
│   └── places_list_screen.dart
├── widgets/
│   ├── image_input.dart
│   ├── location_input.dart
│   └── place_item.dart
```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

- [Flutter](https://flutter.dev/)
- [Google Maps API](https://developers.google.com/maps)
- [Image Picker](https://pub.dev/packages/image_picker)
- [Sqflite](https://pub.dev/packages/sqflite)
- [Location](https://pub.dev/packages/location)
- [Path](https://pub.dev/packages/path)

---

