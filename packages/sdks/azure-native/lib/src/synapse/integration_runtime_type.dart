import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of integration runtime.
enum IntegrationRuntimeType implements pulumi.PulumiEnum<String> {
  valueManaged("Managed"),
  valueSelfHosted("SelfHosted");

  const IntegrationRuntimeType(this.wireValue);
  @override
  final String wireValue;

  static IntegrationRuntimeType fromValue(String value) {
    for (final item in IntegrationRuntimeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeType value: $value');
  }
}
