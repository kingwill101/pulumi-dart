/// The response_view specifies which subset of the Task will be returned. By default response_view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/) permission on the Task resource.
enum TaskResponseViewCloudtasksV2beta3 {
  viewUnspecified("VIEW_UNSPECIFIED"),
  basic("BASIC"),
  full("FULL");

  const TaskResponseViewCloudtasksV2beta3(this.wireValue);
  final String wireValue;

  static TaskResponseViewCloudtasksV2beta3 fromValue(String value) {
    for (final item in TaskResponseViewCloudtasksV2beta3.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskResponseViewCloudtasksV2beta3 value: $value');
  }
}
