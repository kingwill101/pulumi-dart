/// Default action for scm access restriction if no rules are matched.
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

