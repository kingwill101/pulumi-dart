import 'package:pulumi/pulumi.dart' as pulumi;

/// Hostname type.
enum HostNameType implements pulumi.PulumiEnum<String> {
  valueVerified("Verified"),
  valueManaged("Managed");

  const HostNameType(this.wireValue);
  @override
  final String wireValue;

  static HostNameType fromValue(String value) {
    for (final item in HostNameType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostNameType value: $value');
  }
}
