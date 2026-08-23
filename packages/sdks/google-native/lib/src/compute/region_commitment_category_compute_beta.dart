/// The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
enum RegionCommitmentCategoryComputeBeta {
  categoryUnspecified("CATEGORY_UNSPECIFIED"),
  license("LICENSE"),
  machine("MACHINE");

  const RegionCommitmentCategoryComputeBeta(this.wireValue);
  final String wireValue;

  static RegionCommitmentCategoryComputeBeta fromValue(String value) {
    for (final item in RegionCommitmentCategoryComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionCommitmentCategoryComputeBeta value: $value');
  }
}
