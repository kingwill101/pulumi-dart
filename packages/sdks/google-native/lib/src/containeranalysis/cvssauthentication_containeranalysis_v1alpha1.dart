/// Defined in CVSS v2
enum CVSSAuthenticationContaineranalysisV1alpha1 {
  authenticationUnspecified("AUTHENTICATION_UNSPECIFIED"),
  authenticationMultiple("AUTHENTICATION_MULTIPLE"),
  authenticationSingle("AUTHENTICATION_SINGLE"),
  authenticationNone("AUTHENTICATION_NONE");

  const CVSSAuthenticationContaineranalysisV1alpha1(this.wireValue);
  final String wireValue;

  static CVSSAuthenticationContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in CVSSAuthenticationContaineranalysisV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAuthenticationContaineranalysisV1alpha1 value: $value');
  }
}

