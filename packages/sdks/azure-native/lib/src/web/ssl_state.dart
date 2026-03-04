/// SSL type.
enum SslState {
  valueDisabled("Disabled"),
  valueSniEnabled("SniEnabled"),
  valueIpBasedEnabled("IpBasedEnabled");

  const SslState(this.wireValue);
  final String wireValue;

  static SslState fromValue(String value) {
    for (final item in SslState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslState value: $value');
  }
}
