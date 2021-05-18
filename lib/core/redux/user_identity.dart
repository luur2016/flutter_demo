

class UserIdentity {
  int userId;
  String name;
  String accessToken;
  String refershToken;
  String tokenType;
  int expireIn;

  LoginSuccessBean(jsonRes){
    userId = jsonRes['userId'];
    name = jsonRes['name'];
    accessToken = jsonRes['accessToken'];
    refershToken =jsonRes['refershToken'];
    tokenType = jsonRes['tokenType'];
    expireIn = jsonRes['expireIn'];
  }

}