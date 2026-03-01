/// Flag if need to use hub gateway.
enum UseHubGateway {
  valueFalse("False"),
  valueTrue("True");

  const UseHubGateway(this.value);
  final String value;

  static UseHubGateway fromValue(String value) {
    for (final item in UseHubGateway.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UseHubGateway value: $value');
  }
}

