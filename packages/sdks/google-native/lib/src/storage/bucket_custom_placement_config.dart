// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's custom placement configuration for Custom Dual Regions.
class BucketCustomPlacementConfig {
  /// The list of regional locations in which data is placed.
  final pulumi.Input<List<String>>? dataLocations;

  /// Creates a new [BucketCustomPlacementConfig].
  /// [dataLocations] The list of regional locations in which data is placed.
  BucketCustomPlacementConfig({
    this.dataLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLocations': ?dataLocations,
    };
  }

  factory BucketCustomPlacementConfig.fromMap(Map<String, dynamic> map) {
    return BucketCustomPlacementConfig(
      dataLocations: map['dataLocations'] == null ? null : ((map['dataLocations'] as List).cast<String>()).input(),
    );
  }
}

