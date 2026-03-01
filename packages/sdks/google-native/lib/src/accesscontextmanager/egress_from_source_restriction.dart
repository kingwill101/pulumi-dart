/// Whether to enforce traffic restrictions based on `sources` field. If the `sources` fields is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
enum EgressFromSourceRestriction {
  sourceRestrictionUnspecified("SOURCE_RESTRICTION_UNSPECIFIED"),
  sourceRestrictionEnabled("SOURCE_RESTRICTION_ENABLED"),
  sourceRestrictionDisabled("SOURCE_RESTRICTION_DISABLED");

  const EgressFromSourceRestriction(this.value);
  final String value;

  static EgressFromSourceRestriction fromValue(String value) {
    for (final item in EgressFromSourceRestriction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EgressFromSourceRestriction value: $value');
  }
}

