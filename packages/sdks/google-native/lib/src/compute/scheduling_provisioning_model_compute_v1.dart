/// Specifies the provisioning model of the instance.
enum SchedulingProvisioningModelComputeV1 {
  spot("SPOT"),
  standard("STANDARD");

  const SchedulingProvisioningModelComputeV1(this.value);
  final String value;

  static SchedulingProvisioningModelComputeV1 fromValue(String value) {
    for (final item in SchedulingProvisioningModelComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingProvisioningModelComputeV1 value: $value');
  }
}

