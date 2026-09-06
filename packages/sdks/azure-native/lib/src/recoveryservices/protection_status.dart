import 'package:pulumi/pulumi.dart' as pulumi;

/// Backup state of this backup item.
enum ProtectionStatus implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueNotProtected("NotProtected"),
  valueProtecting("Protecting"),
  valueProtected("Protected"),
  valueProtectionFailed("ProtectionFailed");

  const ProtectionStatus(this.wireValue);
  @override
  final String wireValue;

  static ProtectionStatus fromValue(String value) {
    for (final item in ProtectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtectionStatus value: $value');
  }
}
