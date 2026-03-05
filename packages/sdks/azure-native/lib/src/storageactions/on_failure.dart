/// Action to be taken when the operation fails for a object.
enum OnFailure {
  break_("break");

  const OnFailure(this.wireValue);
  final String wireValue;

  static OnFailure fromValue(String value) {
    for (final item in OnFailure.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnFailure value: $value');
  }
}

