import 'package:pulumi/pulumi.dart' as pulumi;

/// The endpoint type.
enum EndpointTypeResourceType implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  canary("Canary"),
  production("Production"),
  testInProduction("TestInProduction");

  const EndpointTypeResourceType(this.wireValue);
  @override
  final String wireValue;

  static EndpointTypeResourceType fromValue(String value) {
    for (final item in EndpointTypeResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointTypeResourceType value: $value');
  }
}
