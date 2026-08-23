/// The file type of flow log.
enum FlowLogFormatType {
  valueJSON("JSON");

  const FlowLogFormatType(this.wireValue);
  final String wireValue;

  static FlowLogFormatType fromValue(String value) {
    for (final item in FlowLogFormatType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FlowLogFormatType value: $value');
  }
}
