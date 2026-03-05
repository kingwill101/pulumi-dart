/// Required. The type of component that produces logs that will be forwarded to this logging server.
enum LoggingServerSourceType {
  sourceTypeUnspecified("SOURCE_TYPE_UNSPECIFIED"),
  esxi("ESXI"),
  vcsa("VCSA");

  const LoggingServerSourceType(this.wireValue);
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

