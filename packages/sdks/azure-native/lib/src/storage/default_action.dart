/// Specifies the default action of allow or deny when no other rules match.
enum DefaultAction {
  valueAllow("Allow"),
  valueDeny("Deny");

  const DefaultAction(this.wireValue);
  final String wireValue;

  static DefaultAction fromValue(String value) {
    for (final item in DefaultAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultAction value: $value');
  }
}
