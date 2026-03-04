enum ServerBindingType {
  restartNodeOnAnyServer("RESTART_NODE_ON_ANY_SERVER"),
  restartNodeOnMinimalServers("RESTART_NODE_ON_MINIMAL_SERVERS"),
  serverBindingTypeUnspecified("SERVER_BINDING_TYPE_UNSPECIFIED");

  const ServerBindingType(this.wireValue);
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
