enum CVSSPrivilegesRequired {
  privilegesRequiredUnspecified("PRIVILEGES_REQUIRED_UNSPECIFIED"),
  privilegesRequiredNone("PRIVILEGES_REQUIRED_NONE"),
  privilegesRequiredLow("PRIVILEGES_REQUIRED_LOW"),
  privilegesRequiredHigh("PRIVILEGES_REQUIRED_HIGH");

  const CVSSPrivilegesRequired(this.wireValue);
  final String wireValue;

  static CVSSPrivilegesRequired fromValue(String value) {
    for (final item in CVSSPrivilegesRequired.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSPrivilegesRequired value: $value');
  }
}
