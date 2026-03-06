// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIpv6Range.
class GetIpv6RangeResult {
  final String id;
  final bool isBgp;
  /// A set of Linodes targeted by this IPv6 range. Includes Linodes with IP sharing.
  final List<int> linodes;
  /// The prefix length of the address, denoting how many addresses can be assigned from this range.
  final int prefix;
  final String range;
  /// The region for this range of IPv6 addresses.
  final String region;

  /// Creates a new [GetIpv6RangeResult].
  /// [id] Required.
  /// [isBgp] Required.
  /// [linodes] A set of Linodes targeted by this IPv6 range. Includes Linodes with IP sharing.
  /// [prefix] The prefix length of the address, denoting how many addresses can be assigned from this range.
  /// [range] Required.
  /// [region] The region for this range of IPv6 addresses.
  const GetIpv6RangeResult({
    required this.id,
    required this.isBgp,
    required this.linodes,
    required this.prefix,
    required this.range,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isBgp': isBgp,
      'linodes': linodes,
      'prefix': prefix,
      'range': range,
      'region': region,
    };
  }

  factory GetIpv6RangeResult.fromMap(Map<String, dynamic> map) {
    return GetIpv6RangeResult(
      id: map['id'] as String,
      isBgp: map['isBgp'] as bool,
      linodes: (map['linodes'] as List).cast<int>(),
      prefix: map['prefix'] as int,
      range: map['range'] as String,
      region: map['region'] as String,
    );
  }
}

