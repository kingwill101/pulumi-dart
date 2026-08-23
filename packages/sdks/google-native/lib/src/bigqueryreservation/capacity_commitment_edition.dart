/// Edition of the capacity commitment.
enum CapacityCommitmentEdition {
  editionUnspecified("EDITION_UNSPECIFIED"),
  standard("STANDARD"),
  enterprise("ENTERPRISE"),
  enterprisePlus("ENTERPRISE_PLUS");

  const CapacityCommitmentEdition(this.wireValue);
  final String wireValue;

  static CapacityCommitmentEdition fromValue(String value) {
    for (final item in CapacityCommitmentEdition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityCommitmentEdition value: $value');
  }
}
