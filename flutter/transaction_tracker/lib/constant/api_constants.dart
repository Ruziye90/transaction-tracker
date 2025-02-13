
class ApiConstants{

  static String? baseUrl;

  static void setBaseUrl(String ipAddress, String portNumber) {
    baseUrl = "http://$ipAddress:$portNumber";
  }

  static String? getBaseUrl() {
    return baseUrl;
  }

  static String getUserApi () {
    return "${getBaseUrl()}/login";
  }

  static String getTransactionApi () {
    return "${getBaseUrl()}/transactions";
  }

  static String clientExceptionErrorMessage = "Check server connection";
}