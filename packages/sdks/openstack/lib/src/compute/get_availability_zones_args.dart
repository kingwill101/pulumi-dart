// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_availability_zones_get_availability_zones_args_doc}
/// Arguments for getAvailabilityZones.
/// {@endtemplate}
/// {@macro pulumi_compute_get_availability_zones_get_availability_zones_args_doc}
class GetAvailabilityZonesArgs {
  /// The `region` to fetch availability zones from, defaults to the provider's `region`
  final pulumi.Input<String>? region;
  /// The `state` of the availability zones to match, default ("available").
  final pulumi.Input<String>? state;

  /// Creates a new [GetAvailabilityZonesArgs].
  /// [region] The `region` to fetch availability zones from, defaults to the provider's `region`
  /// [state] The `state` of the availability zones to match, default ("available").
  GetAvailabilityZonesArgs({
    this.region,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'state': ?state,
    };
  }

  factory GetAvailabilityZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZonesArgs(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

