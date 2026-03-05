enum FrontEndServiceType {
  valueNodePort("NodePort"),
  valueLoadBalancer("LoadBalancer");

  const FrontEndServiceType(this.wireValue);
  final String wireValue;

  static FrontEndServiceType fromValue(String value) {
    for (final item in FrontEndServiceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontEndServiceType value: $value');
  }
}

