// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blockstorage_get_availability_zones_v3_get_availability_zones_v3_args_doc}
/// Arguments for getAvailabilityZonesV3.
/// {@endtemplate}
/// {@macro pulumi_blockstorage_get_availability_zones_v3_get_availability_zones_v3_args_doc}
class GetAvailabilityZonesV3Args {
  /// The region in which to obtain the Block Storage client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The `state` of the availability zones to match. Can
  /// either be `available` or `unavailable`. Default is `available`.
  final pulumi.Input<String>? state;

  /// Creates a new [GetAvailabilityZonesV3Args].
  /// [region] The region in which to obtain the Block Storage client.
  /// [state] The `state` of the availability zones to match. Can
  GetAvailabilityZonesV3Args({
    this.region,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'state': ?state,
    };
  }

  factory GetAvailabilityZonesV3Args.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZonesV3Args(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

