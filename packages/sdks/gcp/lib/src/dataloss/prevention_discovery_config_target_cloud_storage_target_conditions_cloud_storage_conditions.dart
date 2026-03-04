// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions {
  /// Only objects with the specified attributes will be scanned. Defaults to [ALL_SUPPORTED_BUCKETS] if unset.
  /// Each value may be one of: `ALL_SUPPORTED_BUCKETS`, `AUTOCLASS_DISABLED`, `AUTOCLASS_ENABLED`.
  final pulumi.Input<List<String>>? includedBucketAttributes;

  /// Only objects with the specified attributes will be scanned. If an object has one of the specified attributes but is inside an excluded bucket, it will not be scanned. Defaults to [ALL_SUPPORTED_OBJECTS]. A profile will be created even if no objects match the included_object_attributes.
  /// Each value may be one of: `ALL_SUPPORTED_OBJECTS`, `STANDARD`, `NEARLINE`, `COLDLINE`, `ARCHIVE`, `REGIONAL`, `MULTI_REGIONAL`, `DURABLE_REDUCED_AVAILABILITY`.
  final pulumi.Input<List<String>>? includedObjectAttributes;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions].
  /// [includedBucketAttributes] Only objects with the specified attributes will be scanned. Defaults to [ALL_SUPPORTED_BUCKETS] if unset.
  /// [includedObjectAttributes] Only objects with the specified attributes will be scanned. If an object has one of the specified attributes but is inside an excluded bucket, it will not be scanned. Defaults to [ALL_SUPPORTED_OBJECTS]. A profile will be created even if no objects match the included_object_attributes.
  PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions({
    this.includedBucketAttributes,
    this.includedObjectAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedBucketAttributes': ?includedBucketAttributes,
      'includedObjectAttributes': ?includedObjectAttributes,
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions(
      includedBucketAttributes: (() {
        final guardedValue = map['includedBucketAttributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      includedObjectAttributes: (() {
        final guardedValue = map['includedObjectAttributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
