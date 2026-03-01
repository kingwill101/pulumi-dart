/// Gets or sets the transport type.
enum ServiceBusTransportType {
  valueNotSpecified("NotSpecified"),
  valueNetMessaging("NetMessaging"),
  valueAMQP("AMQP");

  const ServiceBusTransportType(this.value);
  final String value;

  static ServiceBusTransportType fromValue(String value) {
    for (final item in ServiceBusTransportType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceBusTransportType value: $value');
  }
}

