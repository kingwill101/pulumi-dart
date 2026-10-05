import 'package:pulumi/pulumi.dart' as pulumi;

/// Response type.
enum GoogleCloudDialogflowCxV3ResponseMessageResponseType implements pulumi.PulumiEnum<String> {
  responseTypeUnspecified("RESPONSE_TYPE_UNSPECIFIED"),
  entryPrompt("ENTRY_PROMPT"),
  parameterPrompt("PARAMETER_PROMPT"),
  handlerPrompt("HANDLER_PROMPT");

  const GoogleCloudDialogflowCxV3ResponseMessageResponseType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowCxV3ResponseMessageResponseType fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3ResponseMessageResponseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3ResponseMessageResponseType value: $value');
  }
}
