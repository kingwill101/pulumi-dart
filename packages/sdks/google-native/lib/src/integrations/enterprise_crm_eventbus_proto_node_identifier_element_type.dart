/// Destination node where the edge ends. It can only be a task config.
enum EnterpriseCrmEventbusProtoNodeIdentifierElementType {
  unknownType("UNKNOWN_TYPE"),
  taskConfig("TASK_CONFIG"),
  triggerConfig("TRIGGER_CONFIG");

  const EnterpriseCrmEventbusProtoNodeIdentifierElementType(this.wireValue);
  final String wireValue;

  static EnterpriseCrmEventbusProtoNodeIdentifierElementType fromValue(
    String value,
  ) {
    for (final item
        in EnterpriseCrmEventbusProtoNodeIdentifierElementType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmEventbusProtoNodeIdentifierElementType value: $value',
    );
  }
}
