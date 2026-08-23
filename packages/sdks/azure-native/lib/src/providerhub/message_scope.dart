/// The message scope.
enum MessageScope {
  notSpecified("NotSpecified"),
  registeredSubscriptions("RegisteredSubscriptions");

  const MessageScope(this.wireValue);
  final String wireValue;

  static MessageScope fromValue(String value) {
    for (final item in MessageScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MessageScope value: $value');
  }
}
