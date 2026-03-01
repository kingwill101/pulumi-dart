/// Option to configure network egress for the workers.
enum NetworkConfigEgressOption {
  egressOptionUnspecified("EGRESS_OPTION_UNSPECIFIED"),
  noPublicEgress("NO_PUBLIC_EGRESS"),
  publicEgress("PUBLIC_EGRESS");

  const NetworkConfigEgressOption(this.value);
  final String value;

  static NetworkConfigEgressOption fromValue(String value) {
    for (final item in NetworkConfigEgressOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigEgressOption value: $value');
  }
}

