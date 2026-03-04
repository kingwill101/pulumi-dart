/// The provisioning model.
enum InstancePolicyProvisioningModel {
  provisioningModelUnspecified("PROVISIONING_MODEL_UNSPECIFIED"),
  standard("STANDARD"),
  spot("SPOT"),
  preemptible("PREEMPTIBLE");

  const InstancePolicyProvisioningModel(this.wireValue);
  final String wireValue;

  static InstancePolicyProvisioningModel fromValue(String value) {
    for (final item in InstancePolicyProvisioningModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstancePolicyProvisioningModel value: $value',
    );
  }
}
