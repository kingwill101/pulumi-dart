/// SSL type.
enum SslState {
  valueDisabled("Disabled"),
  valueSniEnabled("SniEnabled"),
  valueIpBasedEnabled("IpBasedEnabled");

  const SslState(this.value);
  final String value;

  static SslState fromValue(String value) {
    for (final item in SslState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslState value: $value');
  }
}

