import 'package:pulumi/pulumi.dart' as pulumi;

/// Which HTTP method to use for the request.
enum HttpTargetHttpMethod implements pulumi.PulumiEnum<String> {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const HttpTargetHttpMethod(this.wireValue);
  @override
  final String wireValue;

  static HttpTargetHttpMethod fromValue(String value) {
    for (final item in HttpTargetHttpMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpTargetHttpMethod value: $value');
  }
}
