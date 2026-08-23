enum CVSSv3Scope {
  scopeUnspecified("SCOPE_UNSPECIFIED"),
  scopeUnchanged("SCOPE_UNCHANGED"),
  scopeChanged("SCOPE_CHANGED");

  const CVSSv3Scope(this.wireValue);
  final String wireValue;

  static CVSSv3Scope fromValue(String value) {
    for (final item in CVSSv3Scope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3Scope value: $value');
  }
}
