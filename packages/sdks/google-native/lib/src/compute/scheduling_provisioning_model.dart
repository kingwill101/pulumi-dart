import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the provisioning model of the instance.
enum SchedulingProvisioningModel implements pulumi.PulumiEnum<String> {
  spot("SPOT"),
  standard("STANDARD");

  const SchedulingProvisioningModel(this.wireValue);
  @override
  final String wireValue;

  static SchedulingProvisioningModel fromValue(String value) {
    for (final item in SchedulingProvisioningModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingProvisioningModel value: $value');
  }
}
