import 'package:pulumi/pulumi.dart' as pulumi;

/// The dashboard part metadata type.
enum DashboardPartMetadataType implements pulumi.PulumiEnum<String> {
  markdown("Extension/HubsExtension/PartType/MarkdownPart");

  const DashboardPartMetadataType(this.wireValue);
  @override
  final String wireValue;

  static DashboardPartMetadataType fromValue(String value) {
    for (final item in DashboardPartMetadataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DashboardPartMetadataType value: $value');
  }
}
