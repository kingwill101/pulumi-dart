/// The protocol permitted for a request made with the account SAS.
enum HttpProtocol {
  valueHttpsHttp("https,http"),
  valueHttps("https");

  const HttpProtocol(this.value);
  final String value;

  static HttpProtocol fromValue(String value) {
    for (final item in HttpProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpProtocol value: $value');
  }
}

