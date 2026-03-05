/// Optional. The mapping rule state
enum MappingRuleState {
  stateUnspecified("STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED"),
  deleted("DELETED");

  const MappingRuleState(this.wireValue);
  final String wireValue;

  static MappingRuleState fromValue(String value) {
    for (final item in MappingRuleState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MappingRuleState value: $value');
  }
}

