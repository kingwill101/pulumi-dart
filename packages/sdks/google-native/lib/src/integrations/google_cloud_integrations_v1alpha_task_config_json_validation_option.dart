/// Optional. If set, overrides the option configured in the Task implementation class.
enum GoogleCloudIntegrationsV1alphaTaskConfigJsonValidationOption {
  jsonValidationOptionUnspecified("JSON_VALIDATION_OPTION_UNSPECIFIED"),
  skip("SKIP"),
  preExecution("PRE_EXECUTION"),
  postExecution("POST_EXECUTION"),
  prePostExecution("PRE_POST_EXECUTION");

  const GoogleCloudIntegrationsV1alphaTaskConfigJsonValidationOption(this.value);
  final String value;

  static GoogleCloudIntegrationsV1alphaTaskConfigJsonValidationOption fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaTaskConfigJsonValidationOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaTaskConfigJsonValidationOption value: $value');
  }
}

