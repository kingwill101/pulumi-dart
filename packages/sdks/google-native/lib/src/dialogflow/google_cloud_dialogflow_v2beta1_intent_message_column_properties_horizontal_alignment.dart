import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Defines text alignment for all cells in this column.
enum GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment implements pulumi.PulumiEnum<String> {
  horizontalAlignmentUnspecified("HORIZONTAL_ALIGNMENT_UNSPECIFIED"),
  leading("LEADING"),
  center("CENTER"),
  trailing("TRAILING");

  const GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment value: $value');
  }
}
