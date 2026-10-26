import 'package:pulumi/pulumi.dart' as pulumi;

/// Defined in CVSS v3
enum CVSSPrivilegesRequiredContaineranalysisV1alpha1 implements pulumi.PulumiEnum<String> {
  privilegesRequiredUnspecified("PRIVILEGES_REQUIRED_UNSPECIFIED"),
  privilegesRequiredNone("PRIVILEGES_REQUIRED_NONE"),
  privilegesRequiredLow("PRIVILEGES_REQUIRED_LOW"),
  privilegesRequiredHigh("PRIVILEGES_REQUIRED_HIGH");

  const CVSSPrivilegesRequiredContaineranalysisV1alpha1(this.wireValue);
  @override
  final String wireValue;

  static CVSSPrivilegesRequiredContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in CVSSPrivilegesRequiredContaineranalysisV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSPrivilegesRequiredContaineranalysisV1alpha1 value: $value');
  }
}
