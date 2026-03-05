/// The state of the index. Output only.
enum IndexState {
  stateUnspecified("STATE_UNSPECIFIED"),
  creating("CREATING"),
  ready("READY"),
  error("ERROR");

  const IndexState(this.wireValue);
  final String wireValue;

  static IndexState fromValue(String value) {
    for (final item in IndexState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexState value: $value');
  }
}

