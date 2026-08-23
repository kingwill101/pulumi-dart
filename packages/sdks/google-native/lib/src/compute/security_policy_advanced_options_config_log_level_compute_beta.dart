enum SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta {
  normal("NORMAL"),
  verbose("VERBOSE");

  const SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta(this.wireValue);
  final String wireValue;

  static SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta fromValue(String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta value: $value');
  }
}
