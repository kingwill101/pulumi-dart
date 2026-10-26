import 'package:pulumi/pulumi.dart' as pulumi;

enum ServerBindingType implements pulumi.PulumiEnum<String> {
  restartNodeOnAnyServer("RESTART_NODE_ON_ANY_SERVER"),
  restartNodeOnMinimalServers("RESTART_NODE_ON_MINIMAL_SERVERS"),
  serverBindingTypeUnspecified("SERVER_BINDING_TYPE_UNSPECIFIED");

  const ServerBindingType(this.wireValue);
  @override
  final String wireValue;

  static ServerBindingType fromValue(String value) {
    for (final item in ServerBindingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerBindingType value: $value');
  }
}
