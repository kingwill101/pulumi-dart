/// Gets or sets the authentication type.
enum ServiceBusAuthenticationType {
  valueNotSpecified("NotSpecified"),
  valueSharedAccessKey("SharedAccessKey");

  const ServiceBusAuthenticationType(this.wireValue);
  final String wireValue;

  static ServiceBusAuthenticationType fromValue(String value) {
    for (final item in ServiceBusAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceBusAuthenticationType value: $value');
  }
}

