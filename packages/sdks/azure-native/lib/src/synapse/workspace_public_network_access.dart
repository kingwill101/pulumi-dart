import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable or Disable public network access to workspace
enum WorkspacePublicNetworkAccess implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const WorkspacePublicNetworkAccess(this.wireValue);
  @override
  final String wireValue;

  static WorkspacePublicNetworkAccess fromValue(String value) {
    for (final item in WorkspacePublicNetworkAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkspacePublicNetworkAccess value: $value');
  }
}
