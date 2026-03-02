// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Target space allocation properties.
class StorageTargetSpaceAllocationResponse {
  /// The percentage of cache space allocated for this storage target
  final pulumi.Input<int>? allocationPercentage;
  /// Name of the storage target.
  final pulumi.Input<String>? name;

  /// Creates a new [StorageTargetSpaceAllocationResponse].
  /// [allocationPercentage] The percentage of cache space allocated for this storage target
  /// [name] Name of the storage target.
  StorageTargetSpaceAllocationResponse({
    this.allocationPercentage,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationPercentage': ?allocationPercentage,
      'name': ?name,
    };
  }

  factory StorageTargetSpaceAllocationResponse.fromMap(Map<String, dynamic> map) {
    return StorageTargetSpaceAllocationResponse(
      allocationPercentage: map['allocationPercentage'] == null ? null : (map['allocationPercentage']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

