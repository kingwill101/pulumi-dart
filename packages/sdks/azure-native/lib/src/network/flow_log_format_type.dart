import 'package:pulumi/pulumi.dart' as pulumi;

/// The file type of flow log.
enum FlowLogFormatType implements pulumi.PulumiEnum<String> {
  valueJSON("JSON");

  const FlowLogFormatType(this.wireValue);
  @override
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
