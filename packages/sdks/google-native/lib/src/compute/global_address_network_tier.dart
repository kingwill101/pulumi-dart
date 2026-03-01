/// This signifies the networking tier used for configuring this address and can only take the following values: PREMIUM or STANDARD. Internal IP addresses are always Premium Tier; global external IP addresses are always Premium Tier; regional external IP addresses can be either Standard or Premium Tier. If this field is not specified, it is assumed to be PREMIUM.
enum GlobalAddressNetworkTier {
  fixedStandard("FIXED_STANDARD"),
  premium("PREMIUM"),
  select("SELECT"),
  standard("STANDARD"),
  standardOverridesFixedStandard("STANDARD_OVERRIDES_FIXED_STANDARD");

  const GlobalAddressNetworkTier(this.value);
  final String value;

  static GlobalAddressNetworkTier fromValue(String value) {
    for (final item in GlobalAddressNetworkTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressNetworkTier value: $value');
  }
}

