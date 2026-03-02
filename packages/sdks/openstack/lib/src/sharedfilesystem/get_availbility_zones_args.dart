// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sharedfilesystem_get_availbility_zones_get_availbility_zones_args_doc}
/// Arguments for getAvailbilityZones.
/// {@endtemplate}
/// {@macro pulumi_sharedfilesystem_get_availbility_zones_get_availbility_zones_args_doc}
class GetAvailbilityZonesArgs {
  /// The region in which to obtain the V2 Shared File System
  /// client. If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAvailbilityZonesArgs].
  /// [region] The region in which to obtain the V2 Shared File System
  GetAvailbilityZonesArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetAvailbilityZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetAvailbilityZonesArgs(
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

