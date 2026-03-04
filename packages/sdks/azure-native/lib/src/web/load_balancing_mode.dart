/// Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment.
enum LoadBalancingMode {
  valueNone("None"),
  valueWeb("Web"),
  valuePublishing("Publishing"),
  valueWebPublishing("Web, Publishing");

  const LoadBalancingMode(this.wireValue);
  final String wireValue;

  static LoadBalancingMode fromValue(String value) {
    for (final item in LoadBalancingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancingMode value: $value');
  }
}
