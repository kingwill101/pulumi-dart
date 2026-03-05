enum NotificationConfigEventTypesItem {
  eventTypeUnspecified("EVENT_TYPE_UNSPECIFIED"),
  transferOperationSuccess("TRANSFER_OPERATION_SUCCESS"),
  transferOperationFailed("TRANSFER_OPERATION_FAILED"),
  transferOperationAborted("TRANSFER_OPERATION_ABORTED");

  const NotificationConfigEventTypesItem(this.wireValue);
  final String wireValue;

  static NotificationConfigEventTypesItem fromValue(String value) {
    for (final item in NotificationConfigEventTypesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationConfigEventTypesItem value: $value');
  }
}

