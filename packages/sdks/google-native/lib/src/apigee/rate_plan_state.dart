import 'package:pulumi/pulumi.dart' as pulumi;

/// Current state of the rate plan (draft or published).
enum RatePlanState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  draft("DRAFT"),
  published("PUBLISHED");

  const RatePlanState(this.wireValue);
  @override
  final String wireValue;

  static RatePlanState fromValue(String value) {
    for (final item in RatePlanState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RatePlanState value: $value');
  }
}
