/// The state of the encryption scope. Possible values (case-insensitive):  Enabled, Disabled.
enum EncryptionScopeState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EncryptionScopeState(this.wireValue);
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
