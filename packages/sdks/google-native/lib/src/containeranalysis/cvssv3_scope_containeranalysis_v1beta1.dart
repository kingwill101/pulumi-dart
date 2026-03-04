enum CVSSv3ScopeContaineranalysisV1beta1 {
  scopeUnspecified("SCOPE_UNSPECIFIED"),
  scopeUnchanged("SCOPE_UNCHANGED"),
  scopeChanged("SCOPE_CHANGED");

  const CVSSv3ScopeContaineranalysisV1beta1(this.wireValue);
  final String wireValue;

  static CVSSv3ScopeContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSv3ScopeContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown CVSSv3ScopeContaineranalysisV1beta1 value: $value',
    );
  }
}
