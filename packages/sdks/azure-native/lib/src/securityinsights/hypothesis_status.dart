import 'package:pulumi/pulumi.dart' as pulumi;

/// The hypothesis status of the hunt.
enum HypothesisStatus implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueInvalidated("Invalidated"),
  valueValidated("Validated");

  const HypothesisStatus(this.wireValue);
  @override
  final String wireValue;

  static HypothesisStatus fromValue(String value) {
    for (final item in HypothesisStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HypothesisStatus value: $value');
  }
}
