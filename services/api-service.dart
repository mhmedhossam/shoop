import 'package:go/remotes/constant.dart';
import 'package:go/remotes/models/user_model.dart';
import 'package:http/http.dart'; as http;

import '../models/user_model.dart';
import 'constant.dart';

class ApiService{
  Future<List<UserModel>> getUser()
  async
  {
    try{var url =Uri(path: ApiConstants.baseUrl+ApiConstants.usersEndpoint);
    if(Response.statusCode==200){
      List<UserModel> _model = userModelFromJason(Response.body);

       return _model;
    }}catch(e){
      print(e.toString());
    }
    
    return [];
  }

}