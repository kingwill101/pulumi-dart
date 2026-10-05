import 'package:pulumi/pulumi.dart' as pulumi;

enum ServerBindingTypeComputeBeta implements pulumi.PulumiEnum<String> {
  restartNodeOnAnyServer("RESTART_NODE_ON_ANY_SERVER"),
  restartNodeOnMinimalServers("RESTART_NODE_ON_MINIMAL_SERVERS"),
  serverBindingTypeUnspecified("SERVER_BINDING_TYPE_UNSPECIFIED");

  const ServerBindingTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static ServerBindingTypeComputeBeta fromValue(String value) {
    for (final item in ServerBindingTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerBindingTypeComputeBeta value: $value');
  }
}
