import 'package:pulumi/pulumi.dart' as pulumi;

enum FrontEndServiceType implements pulumi.PulumiEnum<String> {
  valueNodePort("NodePort"),
  valueLoadBalancer("LoadBalancer");

  const FrontEndServiceType(this.wireValue);
  @override
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
