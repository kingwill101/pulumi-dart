/// Routing Choice defines the kind of network routing opted by the user.
enum RoutingChoice {
  valueMicrosoftRouting("MicrosoftRouting"),
  valueInternetRouting("InternetRouting");

  const RoutingChoice(this.value);
  final String value;

  static RoutingChoice fromValue(String value) {
    for (final item in RoutingChoice.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingChoice value: $value');
  }
}

