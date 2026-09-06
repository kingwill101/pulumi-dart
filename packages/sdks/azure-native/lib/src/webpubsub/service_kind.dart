import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of the service
enum ServiceKind implements pulumi.PulumiEnum<String> {
  valueWebPubSub("WebPubSub"),
  valueSocketIO("SocketIO");

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
