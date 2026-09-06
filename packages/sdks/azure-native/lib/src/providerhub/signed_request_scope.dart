import 'package:pulumi/pulumi.dart' as pulumi;

/// The signed request scope.
enum SignedRequestScope implements pulumi.PulumiEnum<String> {
  resourceUri("ResourceUri"),
  endpoint("Endpoint");

  const SignedRequestScope(this.wireValue);
  @override
  final String wireValue;

  static SignedRequestScope fromValue(String value) {
    for (final item in SignedRequestScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignedRequestScope value: $value');
  }
}
