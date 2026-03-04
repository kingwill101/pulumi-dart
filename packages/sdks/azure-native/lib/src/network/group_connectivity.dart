/// Group connectivity type.
enum GroupConnectivity {
  valueNone("None"),
  valueDirectlyConnected("DirectlyConnected");

  const GroupConnectivity(this.wireValue);
  final String wireValue;

  static GroupConnectivity fromValue(String value) {
    for (final item in GroupConnectivity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GroupConnectivity value: $value');
  }
}
