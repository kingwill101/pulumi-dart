/// Optional. Defines text alignment for all cells in this column.
enum GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment {
  horizontalAlignmentUnspecified("HORIZONTAL_ALIGNMENT_UNSPECIFIED"),
  leading("LEADING"),
  center("CENTER"),
  trailing("TRAILING");

  const GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment value: $value');
  }
}

