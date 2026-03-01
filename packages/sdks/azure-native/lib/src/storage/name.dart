/// Name of the policy. The valid value is AccessTimeTracking. This field is currently read only
enum Name {
  valueAccessTimeTracking("AccessTimeTracking");

  const Name(this.value);
  final String value;

  static Name fromValue(String value) {
    for (final item in Name.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Name value: $value');
  }
}

