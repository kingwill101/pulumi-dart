/// The response_view specifies which subset of the Task will be returned. By default response_view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/) permission on the Task resource.
enum TaskResponseView {
  viewUnspecified("VIEW_UNSPECIFIED"),
  basic("BASIC"),
  full("FULL");

  const TaskResponseView(this.value);
  final String value;

  static TaskResponseView fromValue(String value) {
    for (final item in TaskResponseView.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskResponseView value: $value');
  }
}

