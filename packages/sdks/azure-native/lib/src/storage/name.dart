/// Name of the policy. The valid value is AccessTimeTracking. This field is currently read only
enum Name {
  valueAccessTimeTracking("AccessTimeTracking");

  const Name(this.wireValue);
  final String wireValue;

  static Name fromValue(String value) {
    for (final item in Name.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Name value: $value');
  }
}
