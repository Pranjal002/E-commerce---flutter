import '../model/clothes_model.dart';

abstract class CollectionRepository{
  Future<List<ClothesModel>> getApi();
}