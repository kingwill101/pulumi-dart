/// This determines if traffic is allowed over public network. By default it is enabled.
enum PublicNetworkAccess {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueSecuredByPerimeter("SecuredByPerimeter");

  const PublicNetworkAccess(this.value);
  final String value;

  static PublicNetworkAccess fromValue(String value) {
    for (final item in PublicNetworkAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccess value: $value');
  }
}

