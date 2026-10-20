import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the provisioning model of the instance.
enum SchedulingProvisioningModelComputeBeta implements pulumi.PulumiEnum<String> {
  spot("SPOT"),
  standard("STANDARD");

  const SchedulingProvisioningModelComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static SchedulingProvisioningModelComputeBeta fromValue(String value) {
    for (final item in SchedulingProvisioningModelComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingProvisioningModelComputeBeta value: $value');
  }
}
