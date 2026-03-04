/// Service principal type.
enum ServicePrincipalType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned");

  const ServicePrincipalType(this.wireValue);
  final String wireValue;

  static ServicePrincipalType fromValue(String value) {
    for (final item in ServicePrincipalType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServicePrincipalType value: $value');
  }
}
