
class GeneralResp<T> {
  int status;
  String message;
  T data;

  GeneralResp(this.status, this.message, this.data);

  @override
  String toString() {
    StringBuffer sb = new StringBuffer('{');
    sb.write("\"status\":\"$status\"");
    //sb.write(",\"code\":$code");
    sb.write(",\"msg\":\"$message\"");
    sb.write(",\"data\":\"$data\"");
    sb.write('}');
    return sb.toString();
  }

}