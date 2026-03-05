/// Specifies the provisioning model of the instance.
enum SchedulingProvisioningModelComputeV1 {
  spot("SPOT"),
  standard("STANDARD");

  const SchedulingProvisioningModelComputeV1(this.wireValue);
  final String wireValue;

  static SchedulingProvisioningModelComputeV1 fromValue(String value) {
    for (final item in SchedulingProvisioningModelComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingProvisioningModelComputeV1 value: $value');
  }
}

