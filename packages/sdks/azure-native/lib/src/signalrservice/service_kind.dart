import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of the service
enum ServiceKind implements pulumi.PulumiEnum<String> {
  valueSignalR("SignalR"),
  valueRawWebSockets("RawWebSockets");

  const ServiceKind(this.wireValue);
  @override
  final String wireValue;

  static ServiceKind fromValue(String value) {
    for (final item in ServiceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceKind value: $value');
  }
}
