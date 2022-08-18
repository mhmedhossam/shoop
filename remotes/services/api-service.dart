import 'package:go/remotes/models/user_model.dart';
import 'package:go/remotes/constant.dart';
import 'package:http/http.dart'; as http;
class ApiService {
  Future<List<UserModel>> getUser() 
  async
  {
    try{
        var url= Uri(path: ApiConstants.baseUrl+ApiConstants.userEndpoint); 
    var respone= await http.get(url);
    if(respone.statusCode==200){
      List<UserModel> _model =userModelFromJason(respone.body);
     return _model;
    }
    
    }catch(e){
      print(e.toString());
    }
    
  
    return [

    ];
  }
}
