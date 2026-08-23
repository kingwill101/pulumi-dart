// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's custom placement configuration for Custom Dual Regions.
class BucketCustomPlacementConfig {
  /// The list of regional locations in which data is placed.
  final pulumi.Input<List<String>>? dataLocations;

  /// Creates a new [BucketCustomPlacementConfig].
  /// [dataLocations] The list of regional locations in which data is placed.
  const BucketCustomPlacementConfig({
    this.dataLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLocations': ?dataLocations,
    };
  }

  factory BucketCustomPlacementConfig.fromMap(Map<String, dynamic> map) {
    return BucketCustomPlacementConfig(
      dataLocations: (() { final guardedValue = map['dataLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
