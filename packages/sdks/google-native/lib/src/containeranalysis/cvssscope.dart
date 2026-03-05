enum CVSSScope {
  scopeUnspecified("SCOPE_UNSPECIFIED"),
  scopeUnchanged("SCOPE_UNCHANGED"),
  scopeChanged("SCOPE_CHANGED");

  const CVSSScope(this.wireValue);
  final String wireValue;

  static CVSSScope fromValue(String value) {
    for (final item in CVSSScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSScope value: $value');
  }
}

