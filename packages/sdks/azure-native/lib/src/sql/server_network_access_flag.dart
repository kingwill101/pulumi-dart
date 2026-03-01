/// Whether or not to restrict outbound network access for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
enum ServerNetworkAccessFlag {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ServerNetworkAccessFlag(this.value);
  final String value;

  static ServerNetworkAccessFlag fromValue(String value) {
    for (final item in ServerNetworkAccessFlag.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerNetworkAccessFlag value: $value');
  }
}

