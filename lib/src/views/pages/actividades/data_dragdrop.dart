



import 'modelo_drag_drop.dart';

String selectedTile = "";
int selectedIndex = 0 ;
bool selected = true;
int points = 0;

List<TileModelAreas> myPairs = [];
List<bool> clicked = [];

List<bool> getClicked(){

  List<bool> yoClicked = [];
  List<TileModelAreas> myairs = [];
  myairs = getPairs();
  for(int i=0;i<myairs.length;i++){
    yoClicked[i] = false;
  }

  return yoClicked;
}

List<TileModelAreas>  getPairs(){


  List<TileModelAreas> pairs = [];

  var tileModel =  TileModelAreas();

  //1
  tileModel.setImageAssetPath("assets/seres_vivos/adaptacion.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();

  //2
  tileModel.setImageAssetPath("assets/seres_vivos/celula.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();

  //3
  tileModel.setImageAssetPath("assets/seres_vivos/desarrollo.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();

  //4
  tileModel.setImageAssetPath("assets/seres_vivos/homeostasis.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();
  
  //5
  tileModel.setImageAssetPath("assets/seres_vivos/metabolismo.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();

  //6
  tileModel.setImageAssetPath("assets/seres_vivos/reproduccion.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();

  //7
  tileModel.setImageAssetPath("assets/seres_vivos/tropismo.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();

  return pairs;
}

List<TileModelAreas>  getQuestionPairs(){

  List<TileModelAreas> pairs = [];

  TileModelAreas tileModel =   TileModelAreas();

  //1
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();

  //2
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();

  //3
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();

  //4
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();
  //5
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();

  //6
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();

   //7
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =   TileModelAreas();

 /*  //7
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  TileModelAreas =   TileModelAreas();

  //8
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  TileModelAreas =   TileModelAreas(); */

  return pairs;
}