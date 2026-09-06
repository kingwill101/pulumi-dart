import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of managed identity assigned to this resource.
enum SAPVirtualInstanceIdentityType implements pulumi.PulumiEnum<String> {
  none("None"),
  userAssigned("UserAssigned");

  const SAPVirtualInstanceIdentityType(this.wireValue);
  @override
  final String wireValue;

  static SAPVirtualInstanceIdentityType fromValue(String value) {
    for (final item in SAPVirtualInstanceIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPVirtualInstanceIdentityType value: $value');
  }
}
