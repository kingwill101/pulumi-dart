/// The indication of whether this network will or will not perform IP address management and allocate IP addresses when attached.
enum L3NetworkConfigurationIpamEnabled {
  valueTrue("True"),
  valueFalse("False");

  const L3NetworkConfigurationIpamEnabled(this.value);
  final String value;

  static L3NetworkConfigurationIpamEnabled fromValue(String value) {
    for (final item in L3NetworkConfigurationIpamEnabled.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown L3NetworkConfigurationIpamEnabled value: $value');
  }
}

