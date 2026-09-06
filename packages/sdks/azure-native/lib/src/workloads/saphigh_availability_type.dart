import 'package:pulumi/pulumi.dart' as pulumi;

/// The high availability type.
enum SAPHighAvailabilityType implements pulumi.PulumiEnum<String> {
  availabilitySet("AvailabilitySet"),
  availabilityZone("AvailabilityZone");

  const SAPHighAvailabilityType(this.wireValue);
  @override
  final String wireValue;

  static SAPHighAvailabilityType fromValue(String value) {
    for (final item in SAPHighAvailabilityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPHighAvailabilityType value: $value');
  }
}
