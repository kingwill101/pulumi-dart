/// The IP Filter Action
enum IPAction {
  valueAccept("Accept"),
  valueReject("Reject");

  const IPAction(this.wireValue);
  final String wireValue;

  static IPAction fromValue(String value) {
    for (final item in IPAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAction value: $value');
  }
}
