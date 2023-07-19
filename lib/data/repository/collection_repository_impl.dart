import 'package:ecommerce/Domain/model/clothes_model.dart';
import 'package:ecommerce/Domain/repository/collection_repository.dart';
import 'package:ecommerce/data/remote/api_services.dart';

 class CollectionRepositoryImpl extends CollectionRepository {


  @override
  Future<List<ClothesModel>> getApi() {
    ApiServices apiServices = ApiServices();
    return apiServices.getApi();
  }




}