/// The power state of the VM at the moment list was taken.
enum VmwareVmDetailsPowerStateVmmigrationV1alpha1 {
  powerStateUnspecified("POWER_STATE_UNSPECIFIED"),
  on("ON"),
  off("OFF"),
  suspended("SUSPENDED");

  const VmwareVmDetailsPowerStateVmmigrationV1alpha1(this.wireValue);
  final String wireValue;

  static VmwareVmDetailsPowerStateVmmigrationV1alpha1 fromValue(String value) {
    for (final item in VmwareVmDetailsPowerStateVmmigrationV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown VmwareVmDetailsPowerStateVmmigrationV1alpha1 value: $value',
    );
  }
}
