import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the database transparent data encryption.
enum TransparentDataEncryptionStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const TransparentDataEncryptionStatus(this.wireValue);
  @override
  final String wireValue;

  static TransparentDataEncryptionStatus fromValue(String value) {
    for (final item in TransparentDataEncryptionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransparentDataEncryptionStatus value: $value');
  }
}
