// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ipv6Range resources.
class Ipv6RangeState {
  /// Whether this IPv6 range is shared.
  final pulumi.Input<bool>? isBgp;
  /// The ID of the Linode to assign this range to. This field may be updated to reassign the IPv6 range.
  final pulumi.Input<int>? linodeId;
  /// A list of Linodes targeted by this IPv6 range. Includes Linodes with IP sharing.
  final pulumi.Input<List<int>>? linodes;
  /// The prefix length of the IPv6 range.
  final pulumi.Input<int>? prefixLength;
  /// The IPv6 range of addresses in this pool.
  final pulumi.Input<String>? range;
  /// The region for this range of IPv6 addresses.
  final pulumi.Input<String>? region;
  /// The IPv6 SLAAC address to assign this range to.
  final pulumi.Input<String>? routeTarget;

  /// Creates a new [Ipv6RangeState].
  /// [isBgp] Whether this IPv6 range is shared.
  /// [linodeId] The ID of the Linode to assign this range to. This field may be updated to reassign the IPv6 range.
  /// [linodes] A list of Linodes targeted by this IPv6 range. Includes Linodes with IP sharing.
  /// [prefixLength] The prefix length of the IPv6 range.
  /// [range] The IPv6 range of addresses in this pool.
  /// [region] The region for this range of IPv6 addresses.
  /// [routeTarget] The IPv6 SLAAC address to assign this range to.
  Ipv6RangeState({
    this.isBgp,
    this.linodeId,
    this.linodes,
    this.prefixLength,
    this.range,
    this.region,
    this.routeTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isBgp': ?isBgp,
      'linodeId': ?linodeId,
      'linodes': ?linodes,
      'prefixLength': ?prefixLength,
      'range': ?range,
      'region': ?region,
      'routeTarget': ?routeTarget,
    };
  }

  factory Ipv6RangeState.fromMap(Map<String, dynamic> map) {
    return Ipv6RangeState(
      isBgp: map['isBgp'] == null ? null : (map['isBgp']! as bool).input(),
      linodeId: map['linodeId'] == null ? null : (map['linodeId']! as int).input(),
      linodes: map['linodes'] == null ? null : ((map['linodes']! as List).cast<int>()).input(),
      prefixLength: map['prefixLength'] == null ? null : (map['prefixLength']! as int).input(),
      range: map['range'] == null ? null : (map['range']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      routeTarget: map['routeTarget'] == null ? null : (map['routeTarget']! as String).input(),
    );
  }
}

