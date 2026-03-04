/// Specifies the provisioning model of the instance.
enum SchedulingProvisioningModelComputeBeta {
  spot("SPOT"),
  standard("STANDARD");

  const SchedulingProvisioningModelComputeBeta(this.wireValue);
  final String wireValue;

  static SchedulingProvisioningModelComputeBeta fromValue(String value) {
    for (final item in SchedulingProvisioningModelComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SchedulingProvisioningModelComputeBeta value: $value',
    );
  }
}
