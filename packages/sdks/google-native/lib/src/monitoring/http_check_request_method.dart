import 'package:pulumi/pulumi.dart' as pulumi;

/// The HTTP request method to use for the check. If set to METHOD_UNSPECIFIED then request_method defaults to GET.
enum HttpCheckRequestMethod implements pulumi.PulumiEnum<String> {
  methodUnspecified("METHOD_UNSPECIFIED"),
  get("GET"),
  post("POST");

  const HttpCheckRequestMethod(this.wireValue);
  @override
  final String wireValue;

  static HttpCheckRequestMethod fromValue(String value) {
    for (final item in HttpCheckRequestMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpCheckRequestMethod value: $value');
  }
}
