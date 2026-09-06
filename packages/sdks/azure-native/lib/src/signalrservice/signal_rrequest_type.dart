import 'package:pulumi/pulumi.dart' as pulumi;

/// The incoming request type to the service
enum SignalRRequestType implements pulumi.PulumiEnum<String> {
  valueClientConnection("ClientConnection"),
  valueServerConnection("ServerConnection"),
  valueRESTAPI("RESTAPI"),
  valueTrace("Trace");

  const SignalRRequestType(this.wireValue);
  @override
  final String wireValue;

  static SignalRRequestType fromValue(String value) {
    for (final item in SignalRRequestType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignalRRequestType value: $value');
  }
}
