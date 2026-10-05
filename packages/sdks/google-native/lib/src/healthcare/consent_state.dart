import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Indicates the current state of this Consent.
enum ConsentState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  active("ACTIVE"),
  archived("ARCHIVED"),
  revoked("REVOKED"),
  draft("DRAFT"),
  rejected("REJECTED");

  const ConsentState(this.wireValue);
  @override
  final String wireValue;

  static ConsentState fromValue(String value) {
    for (final item in ConsentState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConsentState value: $value');
  }
}
