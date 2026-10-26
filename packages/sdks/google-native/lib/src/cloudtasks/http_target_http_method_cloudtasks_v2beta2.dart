import 'package:pulumi/pulumi.dart' as pulumi;

/// The HTTP method to use for the request. When specified, it overrides HttpRequest for the task. Note that if the value is set to HttpMethod the HttpRequest of the task will be ignored at execution time.
enum HttpTargetHttpMethodCloudtasksV2beta2 implements pulumi.PulumiEnum<String> {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const HttpTargetHttpMethodCloudtasksV2beta2(this.wireValue);
  @override
  final String wireValue;

  static HttpTargetHttpMethodCloudtasksV2beta2 fromValue(String value) {
    for (final item in HttpTargetHttpMethodCloudtasksV2beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpTargetHttpMethodCloudtasksV2beta2 value: $value');
  }
}
