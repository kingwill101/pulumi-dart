/// The incoming request type to the service
enum WebPubSubRequestType {
  valueClientConnection("ClientConnection"),
  valueServerConnection("ServerConnection"),
  valueRESTAPI("RESTAPI"),
  valueTrace("Trace");

  const WebPubSubRequestType(this.wireValue);
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

