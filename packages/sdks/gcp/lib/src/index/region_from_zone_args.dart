// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_region_from_zone_region_from_zone_args_doc}
/// Arguments for regionFromZone.
/// {@endtemplate}
/// {@macro pulumi_index_region_from_zone_region_from_zone_args_doc}
class RegionFromZoneArgs {
  /// A string of a resource's zone.
  final pulumi.Input<String> zone;

  /// Creates a new [RegionFromZoneArgs].
  /// [zone] A string of a resource's zone.
  const RegionFromZoneArgs({
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zone': zone,
    };
  }

  factory RegionFromZoneArgs.fromMap(Map<String, dynamic> map) {
    return RegionFromZoneArgs(
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
