import 'package:pulumi/pulumi.dart' as pulumi;

/// Edition of the capacity commitment.
enum CapacityCommitmentEdition implements pulumi.PulumiEnum<String> {
  editionUnspecified("EDITION_UNSPECIFIED"),
  standard("STANDARD"),
  enterprise("ENTERPRISE"),
  enterprisePlus("ENTERPRISE_PLUS");

  const CapacityCommitmentEdition(this.wireValue);
  @override
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
