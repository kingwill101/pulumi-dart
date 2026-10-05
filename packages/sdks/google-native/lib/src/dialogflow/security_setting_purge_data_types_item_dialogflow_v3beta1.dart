import 'package:pulumi/pulumi.dart' as pulumi;

enum SecuritySettingPurgeDataTypesItemDialogflowV3beta1 implements pulumi.PulumiEnum<String> {
  purgeDataTypeUnspecified("PURGE_DATA_TYPE_UNSPECIFIED"),
  dialogflowHistory("DIALOGFLOW_HISTORY");

  const SecuritySettingPurgeDataTypesItemDialogflowV3beta1(this.wireValue);
  @override
  final String wireValue;

  static SecuritySettingPurgeDataTypesItemDialogflowV3beta1 fromValue(String value) {
    for (final item in SecuritySettingPurgeDataTypesItemDialogflowV3beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecuritySettingPurgeDataTypesItemDialogflowV3beta1 value: $value');
  }
}
