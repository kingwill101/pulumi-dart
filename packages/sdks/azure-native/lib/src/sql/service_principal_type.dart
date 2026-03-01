/// Service principal type.
enum ServicePrincipalType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned");

  const ServicePrincipalType(this.value);
  final String value;

  static ServicePrincipalType fromValue(String value) {
    for (final item in ServicePrincipalType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServicePrincipalType value: $value');
  }
}

