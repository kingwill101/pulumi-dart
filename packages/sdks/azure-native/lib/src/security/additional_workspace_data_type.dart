/// Data types sent to workspace.
enum AdditionalWorkspaceDataType {
  valueAlerts("Alerts"),
  valueRawEvents("RawEvents");

  const AdditionalWorkspaceDataType(this.wireValue);
  final String wireValue;

  static AdditionalWorkspaceDataType fromValue(String value) {
    for (final item in AdditionalWorkspaceDataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdditionalWorkspaceDataType value: $value');
  }
}
