import 'package:pulumi/pulumi.dart' as pulumi;

/// The HTTP method, default value GET.
enum HttpMethodVerb implements pulumi.PulumiEnum<String> {
  valueGET("GET"),
  valuePOST("POST"),
  valuePUT("PUT"),
  valueDELETE("DELETE");

  const HttpMethodVerb(this.wireValue);
  @override
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
