/// Workspace type.
enum AdditionalWorkspaceType {
  valueSentinel("Sentinel");

  const AdditionalWorkspaceType(this.value);
  final String value;

  static AdditionalWorkspaceType fromValue(String value) {
    for (final item in AdditionalWorkspaceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdditionalWorkspaceType value: $value');
  }
}

