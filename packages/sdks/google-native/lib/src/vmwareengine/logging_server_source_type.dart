import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of component that produces logs that will be forwarded to this logging server.
enum LoggingServerSourceType implements pulumi.PulumiEnum<String> {
  sourceTypeUnspecified("SOURCE_TYPE_UNSPECIFIED"),
  esxi("ESXI"),
  vcsa("VCSA");

  const LoggingServerSourceType(this.wireValue);
  @override
  final String wireValue;

  static LoggingServerSourceType fromValue(String value) {
    for (final item in LoggingServerSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingServerSourceType value: $value');
  }
}
