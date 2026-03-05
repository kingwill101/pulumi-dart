/// The indicator of whether this is the default gateway.
/// Only one of the attached networks (including the CloudServicesNetwork attachment) for a single machine may be specified as True.
enum DefaultGateway {
  valueTrue("True"),
  valueFalse("False");

  const DefaultGateway(this.wireValue);
  final String wireValue;

  static DefaultGateway fromValue(String value) {
    for (final item in DefaultGateway.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultGateway value: $value');
  }
}

