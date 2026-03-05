/// Enabling/Disabling the Double Encryption state
enum InfrastructureEncryptionState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const InfrastructureEncryptionState(this.wireValue);
  final String wireValue;

  static InfrastructureEncryptionState fromValue(String value) {
    for (final item in InfrastructureEncryptionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InfrastructureEncryptionState value: $value');
  }
}

