/// The linked action.
enum LinkedAction {
  notSpecified("NotSpecified"),
  blocked("Blocked"),
  validate("Validate"),
  enabled("Enabled");

  const LinkedAction(this.value);
  final String value;

  static LinkedAction fromValue(String value) {
    for (final item in LinkedAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkedAction value: $value');
  }
}

