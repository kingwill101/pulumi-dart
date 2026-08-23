/// Optional. External task type of the task
enum GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType {
  externalTaskTypeUnspecified("EXTERNAL_TASK_TYPE_UNSPECIFIED"),
  normalTask("NORMAL_TASK"),
  errorTask("ERROR_TASK");

  const GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType(this.wireValue);
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType value: $value');
  }
}
