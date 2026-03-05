/// Gets or sets the transport type.
enum ServiceBusTransportType {
  valueNotSpecified("NotSpecified"),
  valueNetMessaging("NetMessaging"),
  valueAMQP("AMQP");

  const ServiceBusTransportType(this.wireValue);
  final String wireValue;

  static ServiceBusTransportType fromValue(String value) {
    for (final item in ServiceBusTransportType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceBusTransportType value: $value');
  }
}

