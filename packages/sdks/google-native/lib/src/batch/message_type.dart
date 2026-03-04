/// The message type.
enum MessageType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  jobStateChanged("JOB_STATE_CHANGED"),
  taskStateChanged("TASK_STATE_CHANGED");

  const MessageType(this.wireValue);
  final String wireValue;

  static MessageType fromValue(String value) {
    for (final item in MessageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MessageType value: $value');
  }
}
