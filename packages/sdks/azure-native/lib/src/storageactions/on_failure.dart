/// Action to be taken when the operation fails for a object.
enum OnFailure {
  break_("break");

  const OnFailure(this.value);
  final String value;

  static OnFailure fromValue(String value) {
    for (final item in OnFailure.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnFailure value: $value');
  }
}

