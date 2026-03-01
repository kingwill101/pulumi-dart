/// Indicates the type of NLU model.
enum GoogleCloudDialogflowCxV3beta1NluSettingsModelType {
  modelTypeUnspecified("MODEL_TYPE_UNSPECIFIED"),
  modelTypeStandard("MODEL_TYPE_STANDARD"),
  modelTypeAdvanced("MODEL_TYPE_ADVANCED");

  const GoogleCloudDialogflowCxV3beta1NluSettingsModelType(this.value);
  final String value;

  static GoogleCloudDialogflowCxV3beta1NluSettingsModelType fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3beta1NluSettingsModelType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3beta1NluSettingsModelType value: $value');
  }
}

