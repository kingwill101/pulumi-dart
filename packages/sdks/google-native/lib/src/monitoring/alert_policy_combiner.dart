/// How to combine the results of multiple conditions to determine if an incident should be opened. If condition_time_series_query_language is present, this must be COMBINE_UNSPECIFIED.
enum AlertPolicyCombiner {
  combineUnspecified("COMBINE_UNSPECIFIED"),
  and("AND"),
  or("OR"),
  andWithMatchingResource("AND_WITH_MATCHING_RESOURCE");

  const AlertPolicyCombiner(this.wireValue);
  final String wireValue;

  static AlertPolicyCombiner fromValue(String value) {
    for (final item in AlertPolicyCombiner.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertPolicyCombiner value: $value');
  }
}

