import 'package:pulumi/pulumi.dart' as pulumi;

/// The incoming request type to the service
enum WebPubSubRequestType implements pulumi.PulumiEnum<String> {
  valueClientConnection("ClientConnection"),
  valueServerConnection("ServerConnection"),
  valueRESTAPI("RESTAPI"),
  valueTrace("Trace");

  const WebPubSubRequestType(this.wireValue);
  @override
  final String wireValue;

  static WebPubSubRequestType fromValue(String value) {
    for (final item in WebPubSubRequestType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebPubSubRequestType value: $value');
  }
}
