/// Type of server failure response message.
enum ServerFailureResponseMessageType {
  notSpecified("NotSpecified"),
  outageReporting("OutageReporting");

  const ServerFailureResponseMessageType(this.wireValue);
  final String wireValue;

  static ServerFailureResponseMessageType fromValue(String value) {
    for (final item in ServerFailureResponseMessageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ServerFailureResponseMessageType value: $value',
    );
  }
}
