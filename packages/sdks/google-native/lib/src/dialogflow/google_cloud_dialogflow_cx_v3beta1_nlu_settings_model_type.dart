import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the type of NLU model.
enum GoogleCloudDialogflowCxV3beta1NluSettingsModelType implements pulumi.PulumiEnum<String> {
  modelTypeUnspecified("MODEL_TYPE_UNSPECIFIED"),
  modelTypeStandard("MODEL_TYPE_STANDARD"),
  modelTypeAdvanced("MODEL_TYPE_ADVANCED");

  const GoogleCloudDialogflowCxV3beta1NluSettingsModelType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowCxV3beta1NluSettingsModelType fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3beta1NluSettingsModelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3beta1NluSettingsModelType value: $value');
  }
}
