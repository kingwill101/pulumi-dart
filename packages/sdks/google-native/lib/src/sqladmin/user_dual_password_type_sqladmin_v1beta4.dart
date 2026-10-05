import 'package:pulumi/pulumi.dart' as pulumi;

/// Dual password status for the user.
enum UserDualPasswordTypeSqladminV1beta4 implements pulumi.PulumiEnum<String> {
  dualPasswordTypeUnspecified("DUAL_PASSWORD_TYPE_UNSPECIFIED"),
  noModifyDualPassword("NO_MODIFY_DUAL_PASSWORD"),
  noDualPassword("NO_DUAL_PASSWORD"),
  dualPassword("DUAL_PASSWORD");

  const UserDualPasswordTypeSqladminV1beta4(this.wireValue);
  @override
  final String wireValue;

  static UserDualPasswordTypeSqladminV1beta4 fromValue(String value) {
    for (final item in UserDualPasswordTypeSqladminV1beta4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserDualPasswordTypeSqladminV1beta4 value: $value');
  }
}
