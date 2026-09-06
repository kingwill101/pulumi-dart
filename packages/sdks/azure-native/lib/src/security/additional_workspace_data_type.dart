import 'package:pulumi/pulumi.dart' as pulumi;

/// Data types sent to workspace.
enum AdditionalWorkspaceDataType implements pulumi.PulumiEnum<String> {
  alerts("Alerts"),
  rawEvents("RawEvents");

  const AdditionalWorkspaceDataType(this.wireValue);
  @override
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
