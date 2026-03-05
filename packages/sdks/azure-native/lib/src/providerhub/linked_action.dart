/// The linked action.
enum LinkedAction {
  notSpecified("NotSpecified"),
  blocked("Blocked"),
  validate("Validate"),
  enabled("Enabled");

  const LinkedAction(this.wireValue);
  final String wireValue;

  static LinkedAction fromValue(String value) {
    for (final item in LinkedAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkedAction value: $value');
  }
}

