/// The incoming request type to the service
enum SignalRRequestType {
  valueClientConnection("ClientConnection"),
  valueServerConnection("ServerConnection"),
  valueRESTAPI("RESTAPI"),
  valueTrace("Trace");

  const SignalRRequestType(this.value);
  final String value;

  static SignalRRequestType fromValue(String value) {
    for (final item in SignalRRequestType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignalRRequestType value: $value');
  }
}

