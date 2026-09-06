import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the transport type.
enum ServiceBusTransportType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueNetMessaging("NetMessaging"),
  valueAMQP("AMQP");

  const ServiceBusTransportType(this.wireValue);
  @override
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
