/// The HTTP method, default value GET.
enum HttpMethodVerb {
  valueGET("GET"),
  valuePOST("POST"),
  valuePUT("PUT"),
  valueDELETE("DELETE");

  const HttpMethodVerb(this.wireValue);
  final String wireValue;

  static HttpMethodVerb fromValue(String value) {
    for (final item in HttpMethodVerb.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpMethodVerb value: $value');
  }
}
