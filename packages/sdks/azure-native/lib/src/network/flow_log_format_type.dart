/// The file type of flow log.
enum FlowLogFormatType {
  valueJSON("JSON");

  const FlowLogFormatType(this.value);
  final String value;

  static FlowLogFormatType fromValue(String value) {
    for (final item in FlowLogFormatType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FlowLogFormatType value: $value');
  }
}

