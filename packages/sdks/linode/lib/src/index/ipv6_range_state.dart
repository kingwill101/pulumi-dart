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
    pulumi.Output<bool>? isBgp,
    pulumi.Output<int>? linodeId,
    pulumi.Output<List<int>>? linodes,
    pulumi.Output<int>? prefixLength,
    pulumi.Output<String>? range,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routeTarget,
  }) :
      isBgp = pulumi.Input.asOptionalInput<bool>(isBgp),
      linodeId = pulumi.Input.asOptionalInput<int>(linodeId),
      linodes = pulumi.Input.asOptionalInput<List<int>>(linodes),
      prefixLength = pulumi.Input.asOptionalInput<int>(prefixLength),
      range = pulumi.Input.asOptionalInput<String>(range),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeTarget = pulumi.Input.asOptionalInput<String>(routeTarget);

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
      isBgp: map['isBgp'] == null ? null : pulumi.Output.create<bool>(map['isBgp'] as bool),
      linodeId: map['linodeId'] == null ? null : pulumi.Output.create<int>(map['linodeId'] as int),
      linodes: map['linodes'] == null ? null : pulumi.Output.create<List<int>>((map['linodes'] as List).cast<int>()),
      prefixLength: map['prefixLength'] == null ? null : pulumi.Output.create<int>(map['prefixLength'] as int),
      range: map['range'] == null ? null : pulumi.Output.create<String>(map['range'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeTarget: map['routeTarget'] == null ? null : pulumi.Output.create<String>(map['routeTarget'] as String),
    );
  }
}

