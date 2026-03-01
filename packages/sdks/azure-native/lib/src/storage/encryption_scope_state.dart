/// The state of the encryption scope. Possible values (case-insensitive):  Enabled, Disabled.
enum EncryptionScopeState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EncryptionScopeState(this.value);
  final String value;

  static EncryptionScopeState fromValue(String value) {
    for (final item in EncryptionScopeState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionScopeState value: $value');
  }
}

