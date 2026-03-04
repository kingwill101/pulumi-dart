/// Enable or Disable public network access to workspace
enum WorkspacePublicNetworkAccess {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const WorkspacePublicNetworkAccess(this.wireValue);
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
