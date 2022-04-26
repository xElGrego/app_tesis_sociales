

class TileModelAreas{

  String? imageAssetPath;
  bool? isSelected;

  TileModelAreas({ this.imageAssetPath,  this.isSelected});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  String getImageAssetPath(){
    return imageAssetPath!;
  }

  void setIsSelected(bool getIsSelected){
    isSelected = getIsSelected;
  }

  bool getIsSelected(){
    return isSelected!;
  }
} 