import 'package:pulumi/pulumi.dart' as pulumi;

/// The message type.
enum MessageType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  jobStateChanged("JOB_STATE_CHANGED"),
  taskStateChanged("TASK_STATE_CHANGED");

  const MessageType(this.wireValue);
  @override
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
