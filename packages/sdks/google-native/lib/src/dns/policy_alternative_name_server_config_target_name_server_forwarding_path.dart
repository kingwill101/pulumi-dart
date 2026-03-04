/// Forwarding path for this TargetNameServer. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
enum PolicyAlternativeNameServerConfigTargetNameServerForwardingPath {
  default_("default"),
  private("private");

  const PolicyAlternativeNameServerConfigTargetNameServerForwardingPath(
    this.wireValue,
  );
  final String wireValue;

  static PolicyAlternativeNameServerConfigTargetNameServerForwardingPath
  fromValue(String value) {
    for (final item
        in PolicyAlternativeNameServerConfigTargetNameServerForwardingPath
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PolicyAlternativeNameServerConfigTargetNameServerForwardingPath value: $value',
    );
  }
}
