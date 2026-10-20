import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Indicates the current state of this Consent.
enum ConsentStateHealthcareV1beta1 implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  active("ACTIVE"),
  archived("ARCHIVED"),
  revoked("REVOKED"),
  draft("DRAFT"),
  rejected("REJECTED");

  const ConsentStateHealthcareV1beta1(this.wireValue);
  @override
  final String wireValue;

  static ConsentStateHealthcareV1beta1 fromValue(String value) {
    for (final item in ConsentStateHealthcareV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConsentStateHealthcareV1beta1 value: $value');
  }
}
