/// Whether or not to automatically install Azure Arc (hybrid compute) agents on machines
enum AutoProvision {
  valueOn("On"),
  valueOff("Off");

  const AutoProvision(this.wireValue);
  final String wireValue;

  static AutoProvision fromValue(String value) {
    for (final item in AutoProvision.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoProvision value: $value');
  }
}

