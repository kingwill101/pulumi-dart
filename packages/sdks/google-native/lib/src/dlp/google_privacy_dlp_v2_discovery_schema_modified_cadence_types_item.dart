import 'package:pulumi/pulumi.dart' as pulumi;

enum GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem implements pulumi.PulumiEnum<String> {
  schemaModificationUnspecified("SCHEMA_MODIFICATION_UNSPECIFIED"),
  schemaNewColumns("SCHEMA_NEW_COLUMNS"),
  schemaRemovedColumns("SCHEMA_REMOVED_COLUMNS");

  const GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem(this.wireValue);
  @override
  final String wireValue;

  static GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem fromValue(String value) {
    for (final item in GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem value: $value');
  }
}
