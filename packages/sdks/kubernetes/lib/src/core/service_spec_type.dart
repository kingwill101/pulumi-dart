enum ServiceSpecType {
  valueExternalName("ExternalName"),
  valueClusterIP("ClusterIP"),
  valueNodePort("NodePort"),
  valueLoadBalancer("LoadBalancer");

  const ServiceSpecType(this.value);
  final String value;

  static ServiceSpecType fromValue(String value) {
    for (final item in ServiceSpecType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceSpecType value: $value');
  }
}

