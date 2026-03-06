// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's custom placement configuration for Custom Dual Regions.
class BucketCustomPlacementConfigResponse {
  /// The list of regional locations in which data is placed.
  final pulumi.Input<List<String>> dataLocations;

  /// Creates a new [BucketCustomPlacementConfigResponse].
  /// [dataLocations] The list of regional locations in which data is placed.
  const BucketCustomPlacementConfigResponse({
    required this.dataLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLocations': dataLocations,
    };
  }

  factory BucketCustomPlacementConfigResponse.fromMap(Map<String, dynamic> map) {
    return BucketCustomPlacementConfigResponse(
      dataLocations: pulumi.Input.fromValue((map['dataLocations'] as List).cast<String>()),
    );
  }
}

