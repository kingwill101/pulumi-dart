/// Optional. Indicates public network solution. If enable, enable public network access of target service with best try. Default is enable. If optOut, opt out public network access configuration.
enum ActionType {
  valueEnable("enable"),
  valueOptOut("optOut");

  const ActionType(this.value);
  final String value;

  static ActionType fromValue(String value) {
    for (final item in ActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionType value: $value');
  }
}

