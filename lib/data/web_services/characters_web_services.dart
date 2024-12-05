import 'package:dio/dio.dart';
import 'package:week1/constants/strings.dart';

class CharactersWebServices{
  late Dio dio ;

  CharactersWebServices(){
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async{
    try{
      Response response = await dio.get('Characters');
      print(response.data.toString());
      return response.data;
    }catch(e){
      print(e.toString());
      return [];
    }
  }
}