enum CVSSScope {
  scopeUnspecified("SCOPE_UNSPECIFIED"),
  scopeUnchanged("SCOPE_UNCHANGED"),
  scopeChanged("SCOPE_CHANGED");

  const CVSSScope(this.value);
  final String value;

  static CVSSScope fromValue(String value) {
    for (final item in CVSSScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSScope value: $value');
  }
}

