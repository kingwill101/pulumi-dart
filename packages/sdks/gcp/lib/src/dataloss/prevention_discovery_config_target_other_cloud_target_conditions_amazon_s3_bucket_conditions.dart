// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions {
  /// Bucket types that should be profiled. Optional. Defaults to TYPE_ALL_SUPPORTED if unspecified. Possible values: ["TYPE_ALL_SUPPORTED", "TYPE_GENERAL_PURPOSE"]
  final pulumi.Input<List<String>>? bucketTypes;
  /// Object classes that should be profiled. Optional. Defaults to ALL_SUPPORTED_CLASSES if unspecified. Possible values: ["ALL_SUPPORTED_CLASSES", "STANDARD", "STANDARD_INFREQUENT_ACCESS", "GLACIER_INSTANT_RETRIEVAL", "INTELLIGENT_TIERING"]
  final pulumi.Input<List<String>>? objectStorageClasses;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions].
  /// [bucketTypes] Bucket types that should be profiled. Optional. Defaults to TYPE_ALL_SUPPORTED if unspecified. Possible values: ["TYPE_ALL_SUPPORTED", "TYPE_GENERAL_PURPOSE"]
  /// [objectStorageClasses] Object classes that should be profiled. Optional. Defaults to ALL_SUPPORTED_CLASSES if unspecified. Possible values: ["ALL_SUPPORTED_CLASSES", "STANDARD", "STANDARD_INFREQUENT_ACCESS", "GLACIER_INSTANT_RETRIEVAL", "INTELLIGENT_TIERING"]
  PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions({
    this.bucketTypes,
    this.objectStorageClasses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketTypes': ?bucketTypes,
      'objectStorageClasses': ?objectStorageClasses,
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions(
      bucketTypes: map['bucketTypes'] == null ? null : ((map['bucketTypes']! as List).cast<String>()).input(),
      objectStorageClasses: map['objectStorageClasses'] == null ? null : ((map['objectStorageClasses']! as List).cast<String>()).input(),
    );
  }
}

