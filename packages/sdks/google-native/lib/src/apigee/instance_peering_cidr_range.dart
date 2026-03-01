/// Optional. Size of the CIDR block range that will be reserved by the instance. PAID organizations support `SLASH_16` to `SLASH_20` and defaults to `SLASH_16`. Evaluation organizations support only `SLASH_23`.
enum InstancePeeringCidrRange {
  cidrRangeUnspecified("CIDR_RANGE_UNSPECIFIED"),
  slash16("SLASH_16"),
  slash17("SLASH_17"),
  slash18("SLASH_18"),
  slash19("SLASH_19"),
  slash20("SLASH_20"),
  slash22("SLASH_22"),
  slash23("SLASH_23");

  const InstancePeeringCidrRange(this.value);
  final String value;

  static InstancePeeringCidrRange fromValue(String value) {
    for (final item in InstancePeeringCidrRange.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePeeringCidrRange value: $value');
  }
}

