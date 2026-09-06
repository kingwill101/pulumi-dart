import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether the port is enabled for a serial console connection.
enum SerialPortState implements pulumi.PulumiEnum<String> {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const SerialPortState(this.wireValue);
  @override
  final String wireValue;

  static SerialPortState fromValue(String value) {
    for (final item in SerialPortState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SerialPortState value: $value');
  }
}
