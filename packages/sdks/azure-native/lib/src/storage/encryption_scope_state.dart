import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of the encryption scope. Possible values (case-insensitive):  Enabled, Disabled.
enum EncryptionScopeState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EncryptionScopeState(this.wireValue);
  @override
  final String wireValue;

  static EncryptionScopeState fromValue(String value) {
    for (final item in EncryptionScopeState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionScopeState value: $value');
  }
}
