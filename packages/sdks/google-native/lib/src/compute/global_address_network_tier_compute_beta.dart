/// This signifies the networking tier used for configuring this address and can only take the following values: PREMIUM or STANDARD. Internal IP addresses are always Premium Tier; global external IP addresses are always Premium Tier; regional external IP addresses can be either Standard or Premium Tier. If this field is not specified, it is assumed to be PREMIUM.
enum GlobalAddressNetworkTierComputeBeta {
  fixedStandard("FIXED_STANDARD"),
  premium("PREMIUM"),
  standard("STANDARD"),
  standardOverridesFixedStandard("STANDARD_OVERRIDES_FIXED_STANDARD");

  const GlobalAddressNetworkTierComputeBeta(this.value);
  final String value;

  static GlobalAddressNetworkTierComputeBeta fromValue(String value) {
    for (final item in GlobalAddressNetworkTierComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressNetworkTierComputeBeta value: $value');
  }
}

