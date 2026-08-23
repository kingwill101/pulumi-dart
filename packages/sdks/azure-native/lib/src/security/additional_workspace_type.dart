/// Workspace type.
enum AdditionalWorkspaceType {
  sentinel("Sentinel");

  const AdditionalWorkspaceType(this.wireValue);
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
