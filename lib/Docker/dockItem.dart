
class DockItem<T> {
  String name ;
  T fileType;
  bool isActive = false;
  bool alwaysVisible ;
  String iconName;
  DockItem(this.name, this.fileType,this.alwaysVisible,this.iconName);

  String getIcon(){
    return "assets/icons/$iconName.png";
  }

  String getName(){
    return name;
  }

}