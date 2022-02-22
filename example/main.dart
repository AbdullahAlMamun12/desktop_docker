import 'package:desktop_docker/desktop_docker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // place your docker icon assets into  "assets/icons/"  and use the asset name only;
  var dockerItems = [
    DockItem("Video Player", FileType.CALCULATOR,true,'ic_calculator'),
    DockItem("PDF Reader", FileType.GAME,true,'ic_game'),
    DockItem("HTML Reader", FileType.FOLDER,true,'folder'),
    DockItem("File Tree App", FileType.PAINTER,true,'ic_paint'),
  ];
  late DockController<FileType> dockController ;


  _onDockerItemClicked(DockItem item) {
    //TODO: action on item clicked
    print(item.fileType);
  }

  @override
  void initState() {
    dockController = DockController<FileType>(dockerItems, _onDockerItemClicked);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Background wallpaper
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.fill,
            ),
          ),

          // Desktop Body content
         SizedBox(height: size.height, width: size.width),
          // Docker Widget
          Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Center(
                  child: Dock(controller: dockController,)
              )),
        ],
      ),
    );
  }
}

enum FileType {
  FOLDER,
  CALCULATOR,
  PAINTER,
  GAME,
}


