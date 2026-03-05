/// The activation state of the API Bridge for this Communications Gateway
enum ApiBridgeActivationState {
  enabled("enabled"),
  disabled("disabled");

  const ApiBridgeActivationState(this.wireValue);
  final String wireValue;

  static ApiBridgeActivationState fromValue(String value) {
    for (final item in ApiBridgeActivationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiBridgeActivationState value: $value');
  }
}

