import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Indicates whether the entity type can be automatically expanded.
enum EntityTypeAutoExpansionModeDialogflowV2beta1 implements pulumi.PulumiEnum<String> {
  autoExpansionModeUnspecified("AUTO_EXPANSION_MODE_UNSPECIFIED"),
  autoExpansionModeDefault("AUTO_EXPANSION_MODE_DEFAULT");

  const EntityTypeAutoExpansionModeDialogflowV2beta1(this.wireValue);
  @override
  final String wireValue;

  static EntityTypeAutoExpansionModeDialogflowV2beta1 fromValue(String value) {
    for (final item in EntityTypeAutoExpansionModeDialogflowV2beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeAutoExpansionModeDialogflowV2beta1 value: $value');
  }
}
