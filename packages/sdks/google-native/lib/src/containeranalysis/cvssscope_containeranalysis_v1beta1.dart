/// Defined in CVSS v3
enum CVSSScopeContaineranalysisV1beta1 {
  scopeUnspecified("SCOPE_UNSPECIFIED"),
  scopeUnchanged("SCOPE_UNCHANGED"),
  scopeChanged("SCOPE_CHANGED");

  const CVSSScopeContaineranalysisV1beta1(this.wireValue);
  final String wireValue;

  static CVSSScopeContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSScopeContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSScopeContaineranalysisV1beta1 value: $value');
  }
}

