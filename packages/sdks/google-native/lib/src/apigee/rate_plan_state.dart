/// Current state of the rate plan (draft or published).
enum RatePlanState {
  stateUnspecified("STATE_UNSPECIFIED"),
  draft("DRAFT"),
  published("PUBLISHED");

  const RatePlanState(this.value);
  final String value;

  static RatePlanState fromValue(String value) {
    for (final item in RatePlanState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RatePlanState value: $value');
  }
}

