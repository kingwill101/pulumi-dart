/// Action to be taken when the operation is successful for a object.
enum OnSuccess {
  continue_("continue");

  const OnSuccess(this.value);
  final String value;

  static OnSuccess fromValue(String value) {
    for (final item in OnSuccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnSuccess value: $value');
  }
}

