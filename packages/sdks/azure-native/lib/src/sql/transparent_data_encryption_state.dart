import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the state of the transparent data encryption.
enum TransparentDataEncryptionState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const TransparentDataEncryptionState(this.wireValue);
  @override
  final String wireValue;

  static TransparentDataEncryptionState fromValue(String value) {
    for (final item in TransparentDataEncryptionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransparentDataEncryptionState value: $value');
  }
}
