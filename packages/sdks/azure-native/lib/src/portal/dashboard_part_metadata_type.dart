/// The dashboard part metadata type.
enum DashboardPartMetadataType {
  markdown("Extension/HubsExtension/PartType/MarkdownPart");

  const DashboardPartMetadataType(this.wireValue);
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

