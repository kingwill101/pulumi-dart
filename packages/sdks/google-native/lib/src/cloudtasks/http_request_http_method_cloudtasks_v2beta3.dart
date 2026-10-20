import 'package:pulumi/pulumi.dart' as pulumi;

/// The HTTP method to use for the request. The default is POST.
enum HttpRequestHttpMethodCloudtasksV2beta3 implements pulumi.PulumiEnum<String> {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const HttpRequestHttpMethodCloudtasksV2beta3(this.wireValue);
  @override
  final String wireValue;

  static HttpRequestHttpMethodCloudtasksV2beta3 fromValue(String value) {
    for (final item in HttpRequestHttpMethodCloudtasksV2beta3.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpRequestHttpMethodCloudtasksV2beta3 value: $value');
  }
}
