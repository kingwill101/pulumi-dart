import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the authentication type.
enum ServiceBusAuthenticationType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueSharedAccessKey("SharedAccessKey");

  const ServiceBusAuthenticationType(this.wireValue);
  @override
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
