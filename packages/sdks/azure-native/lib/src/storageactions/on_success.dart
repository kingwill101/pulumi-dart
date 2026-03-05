/// Action to be taken when the operation is successful for a object.
enum OnSuccess {
  continue_("continue");

  const OnSuccess(this.wireValue);
  final String wireValue;

  static OnSuccess fromValue(String value) {
    for (final item in OnSuccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnSuccess value: $value');
  }
}

