/// The HTTP method to use for the request. The default is POST.
enum HttpRequestHttpMethod {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const HttpRequestHttpMethod(this.wireValue);
  final String wireValue;

  static HttpRequestHttpMethod fromValue(String value) {
    for (final item in HttpRequestHttpMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpRequestHttpMethod value: $value');
  }
}

