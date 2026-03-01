/// Required. The type of component that produces logs that will be forwarded to this logging server.
enum LoggingServerSourceType {
  sourceTypeUnspecified("SOURCE_TYPE_UNSPECIFIED"),
  esxi("ESXI"),
  vcsa("VCSA");

  const LoggingServerSourceType(this.value);
  final String value;

  static LoggingServerSourceType fromValue(String value) {
    for (final item in LoggingServerSourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingServerSourceType value: $value');
  }
}

