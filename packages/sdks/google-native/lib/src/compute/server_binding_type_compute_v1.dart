import 'package:pulumi/pulumi.dart' as pulumi;

enum ServerBindingTypeComputeV1 implements pulumi.PulumiEnum<String> {
  restartNodeOnAnyServer("RESTART_NODE_ON_ANY_SERVER"),
  restartNodeOnMinimalServers("RESTART_NODE_ON_MINIMAL_SERVERS"),
  serverBindingTypeUnspecified("SERVER_BINDING_TYPE_UNSPECIFIED");

  const ServerBindingTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static ServerBindingTypeComputeV1 fromValue(String value) {
    for (final item in ServerBindingTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerBindingTypeComputeV1 value: $value');
  }
}
