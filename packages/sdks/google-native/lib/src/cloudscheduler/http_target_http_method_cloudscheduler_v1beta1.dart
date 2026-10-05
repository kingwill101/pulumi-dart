import 'package:pulumi/pulumi.dart' as pulumi;

/// Which HTTP method to use for the request.
enum HttpTargetHttpMethodCloudschedulerV1beta1 implements pulumi.PulumiEnum<String> {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const HttpTargetHttpMethodCloudschedulerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static HttpTargetHttpMethodCloudschedulerV1beta1 fromValue(String value) {
    for (final item in HttpTargetHttpMethodCloudschedulerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpTargetHttpMethodCloudschedulerV1beta1 value: $value');
  }
}
