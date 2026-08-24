// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDnsLocationsResultMaxTtl {
  /// `inherit` uses the account `maxTtlSecs`. `override` uses this location's `ttlSecs`. `disabled` leaves returned TTLs unchanged.
  /// Available values: "inherit", "override", "disabled".
  final pulumi.Input<String> mode;
  /// Location-specific cap on DNS response TTLs, in seconds. Required when `mode` is `override`. Must be omitted when `mode` is `inherit` or `disabled`.
  final pulumi.Input<int> ttlSecs;

  /// Creates a new [GetZeroTrustDnsLocationsResultMaxTtl].
  /// [mode] `inherit` uses the account `maxTtlSecs`. `override` uses this location's `ttlSecs`. `disabled` leaves returned TTLs unchanged.
  /// [ttlSecs] Location-specific cap on DNS response TTLs, in seconds. Required when `mode` is `override`. Must be omitted when `mode` is `inherit` or `disabled`.
  const GetZeroTrustDnsLocationsResultMaxTtl({
    required this.mode,
    required this.ttlSecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'ttlSecs': ttlSecs,
    };
  }

  factory GetZeroTrustDnsLocationsResultMaxTtl.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationsResultMaxTtl(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      ttlSecs: pulumi.Input.fromValue((map['ttlSecs'] as num).toInt()),
    );
  }
}
