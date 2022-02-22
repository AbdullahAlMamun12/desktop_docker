<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.


## Usage

* User controller for controlling docker
```dart
  DockController<FileType> dockController = DockController<FileType>(dockerItems, _onDockerItemClicked);
```

* Docker Icons List
* Place your docker icon assets into  "assets/icons/"  and use the asset name only;
* Use png image
```dart
   var dockerItems = [
  DockItem("Video Player", FileType.CALCULATOR,true,'ic_calculator'),
  DockItem("PDF Reader", FileType.GAME,true,'ic_game'),
  DockItem("HTML Reader", FileType.FOLDER,true,'folder'),
  DockItem("File Tree App", FileType.PAINTER,true,'ic_paint'),
];
```

* Use enum for define fileType
```dart
enum FileType {
  FOLDER,
  CALCULATOR,
  PAINTER,
  GAME,
};

```

* Use Dock Widget 
```dart
   Dock(controller: dockController);

```