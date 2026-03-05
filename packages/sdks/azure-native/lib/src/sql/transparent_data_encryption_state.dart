/// Specifies the state of the transparent data encryption.
enum TransparentDataEncryptionState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const TransparentDataEncryptionState(this.wireValue);
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

