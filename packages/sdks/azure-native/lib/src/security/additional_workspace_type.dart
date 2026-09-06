import 'package:pulumi/pulumi.dart' as pulumi;

/// Workspace type.
enum AdditionalWorkspaceType implements pulumi.PulumiEnum<String> {
  sentinel("Sentinel");

  const AdditionalWorkspaceType(this.wireValue);
  @override
  final String wireValue;

  static AdditionalWorkspaceType fromValue(String value) {
    for (final item in AdditionalWorkspaceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdditionalWorkspaceType value: $value');
  }
}
