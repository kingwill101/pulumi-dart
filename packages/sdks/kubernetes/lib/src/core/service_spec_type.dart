enum ServiceSpecType {
  valueExternalName("ExternalName"),
  valueClusterIP("ClusterIP"),
  valueNodePort("NodePort"),
  valueLoadBalancer("LoadBalancer");

  const ServiceSpecType(this.wireValue);
  final String wireValue;

  static ServiceSpecType fromValue(String value) {
    for (final item in ServiceSpecType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceSpecType value: $value');
  }
}

