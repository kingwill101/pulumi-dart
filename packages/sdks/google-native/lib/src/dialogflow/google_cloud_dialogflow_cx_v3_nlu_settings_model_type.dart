import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the type of NLU model.
enum GoogleCloudDialogflowCxV3NluSettingsModelType implements pulumi.PulumiEnum<String> {
  modelTypeUnspecified("MODEL_TYPE_UNSPECIFIED"),
  modelTypeStandard("MODEL_TYPE_STANDARD"),
  modelTypeAdvanced("MODEL_TYPE_ADVANCED");

  const GoogleCloudDialogflowCxV3NluSettingsModelType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowCxV3NluSettingsModelType fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3NluSettingsModelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3NluSettingsModelType value: $value');
  }
}
