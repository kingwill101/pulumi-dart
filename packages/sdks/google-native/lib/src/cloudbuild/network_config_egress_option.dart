/// Option to configure network egress for the workers.
enum NetworkConfigEgressOption {
  egressOptionUnspecified("EGRESS_OPTION_UNSPECIFIED"),
  noPublicEgress("NO_PUBLIC_EGRESS"),
  publicEgress("PUBLIC_EGRESS");

  const NetworkConfigEgressOption(this.wireValue);
  final String wireValue;

  static NetworkConfigEgressOption fromValue(String value) {
    for (final item in NetworkConfigEgressOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigEgressOption value: $value');
  }
}
