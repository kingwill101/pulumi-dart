enum CVSSv3PrivilegesRequired {
  privilegesRequiredUnspecified("PRIVILEGES_REQUIRED_UNSPECIFIED"),
  privilegesRequiredNone("PRIVILEGES_REQUIRED_NONE"),
  privilegesRequiredLow("PRIVILEGES_REQUIRED_LOW"),
  privilegesRequiredHigh("PRIVILEGES_REQUIRED_HIGH");

  const CVSSv3PrivilegesRequired(this.wireValue);
  final String wireValue;

  static CVSSv3PrivilegesRequired fromValue(String value) {
    for (final item in CVSSv3PrivilegesRequired.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3PrivilegesRequired value: $value');
  }
}

