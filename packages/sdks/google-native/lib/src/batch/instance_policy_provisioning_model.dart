import 'package:pulumi/pulumi.dart' as pulumi;

/// The provisioning model.
enum InstancePolicyProvisioningModel implements pulumi.PulumiEnum<String> {
  provisioningModelUnspecified("PROVISIONING_MODEL_UNSPECIFIED"),
  standard("STANDARD"),
  spot("SPOT"),
  preemptible("PREEMPTIBLE");

  const InstancePolicyProvisioningModel(this.wireValue);
  @override
  final String wireValue;

  static InstancePolicyProvisioningModel fromValue(String value) {
    for (final item in InstancePolicyProvisioningModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePolicyProvisioningModel value: $value');
  }
}
