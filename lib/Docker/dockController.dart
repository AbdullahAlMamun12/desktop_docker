import 'dockItem.dart';

class DockController<T>{

  Function (DockItem<T> item) callback;
  Function(T fileType)? openOfTypeCallback;
  Function(T fileType)? showAllOfTypeCallback;
  Function(T fileType)? hideAllOfTypeCallback;
  Function(T fileType)? closeAllOfTypeCallback;
  late List<DockItem<T>> items;

  DockController(this.items,this.callback,{
    this.openOfTypeCallback,
    this.hideAllOfTypeCallback,
    this.showAllOfTypeCallback,
    this.closeAllOfTypeCallback
  });


  void updateActiveItems(List<T> activeWindows){
    for(var item in items){
      item.isActive = activeWindows.contains(item.fileType);
    }
    items.retainWhere((element) => element.isActive || element.alwaysVisible);

  }

  void openOfType(T fileType){
    if(openOfTypeCallback != null){
      openOfTypeCallback!(fileType);
    }
  } //=> windowManager.openOfType(fileType);

  void showAllOfType(T fileType){
    if(showAllOfTypeCallback != null){
      showAllOfTypeCallback!(fileType);
    }
  }// => windowManager.showAllOfType(fileType);

  void hideAllOfType(T fileType){
    if(hideAllOfTypeCallback != null){
      hideAllOfTypeCallback!(fileType);
    }
  }// => windowManager.hideAllOfType(fileType);

  void closeAllOfType(T fileType){
    if(closeAllOfTypeCallback != null){
      closeAllOfTypeCallback!(fileType);
    }
  }// => windowManager.closeAllOfType(fileType);



}