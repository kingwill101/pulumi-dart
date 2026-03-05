enum ServerBindingTypeComputeV1 {
  restartNodeOnAnyServer("RESTART_NODE_ON_ANY_SERVER"),
  restartNodeOnMinimalServers("RESTART_NODE_ON_MINIMAL_SERVERS"),
  serverBindingTypeUnspecified("SERVER_BINDING_TYPE_UNSPECIFIED");

  const ServerBindingTypeComputeV1(this.wireValue);
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

