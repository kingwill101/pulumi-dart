/// Specifies the provisioning model of the instance.
enum SchedulingProvisioningModel {
  spot("SPOT"),
  standard("STANDARD");

  const SchedulingProvisioningModel(this.wireValue);
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
