import 'package:pulumi/pulumi.dart' as pulumi;

enum CVSSv3PrivilegesRequiredContaineranalysisV1beta1 implements pulumi.PulumiEnum<String> {
  privilegesRequiredUnspecified("PRIVILEGES_REQUIRED_UNSPECIFIED"),
  privilegesRequiredNone("PRIVILEGES_REQUIRED_NONE"),
  privilegesRequiredLow("PRIVILEGES_REQUIRED_LOW"),
  privilegesRequiredHigh("PRIVILEGES_REQUIRED_HIGH");

  const CVSSv3PrivilegesRequiredContaineranalysisV1beta1(this.wireValue);
  @override
  final String wireValue;

  static CVSSv3PrivilegesRequiredContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSv3PrivilegesRequiredContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3PrivilegesRequiredContaineranalysisV1beta1 value: $value');
  }
}
