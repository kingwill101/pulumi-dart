/// The protocol permitted for a request made with the account SAS.
enum HttpProtocol {
  valueHttpsHttp("https,http"),
  valueHttps("https");

  const HttpProtocol(this.wireValue);
  final String wireValue;

  static HttpProtocol fromValue(String value) {
    for (final item in HttpProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpProtocol value: $value');
  }
}

