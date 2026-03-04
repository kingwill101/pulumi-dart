/// The license type to use in OS adaptation.
enum ComputeEngineTargetDefaultsLicenseTypeVmmigrationV1alpha1 {
  computeEngineLicenseTypeDefault("COMPUTE_ENGINE_LICENSE_TYPE_DEFAULT"),
  computeEngineLicenseTypePayg("COMPUTE_ENGINE_LICENSE_TYPE_PAYG"),
  computeEngineLicenseTypeByol("COMPUTE_ENGINE_LICENSE_TYPE_BYOL");

  const ComputeEngineTargetDefaultsLicenseTypeVmmigrationV1alpha1(
    this.wireValue,
  );
  final String wireValue;

  static ComputeEngineTargetDefaultsLicenseTypeVmmigrationV1alpha1 fromValue(
    String value,
  ) {
    for (final item
        in ComputeEngineTargetDefaultsLicenseTypeVmmigrationV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ComputeEngineTargetDefaultsLicenseTypeVmmigrationV1alpha1 value: $value',
    );
  }
}
