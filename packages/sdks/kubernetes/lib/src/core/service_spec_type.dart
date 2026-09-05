import 'package:pulumi/pulumi.dart' as pulumi;

enum ServiceSpecType implements pulumi.PulumiEnum<String> {
  valueExternalName("ExternalName"),
  valueClusterIP("ClusterIP"),
  valueNodePort("NodePort"),
  valueLoadBalancer("LoadBalancer");

  const ServiceSpecType(this.wireValue);
  @override
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
