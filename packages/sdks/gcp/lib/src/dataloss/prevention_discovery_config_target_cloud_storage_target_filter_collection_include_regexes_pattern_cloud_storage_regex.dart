// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex {
  /// Regex to test the bucket name against. If empty, all buckets match. Example: "marketing2021" or "(marketing)\d{4}" will both match the bucket gs://marketing2021
  final pulumi.Input<String>? bucketNameRegex;
  /// For organizations, if unset, will match all projects.
  final pulumi.Input<String>? projectIdRegex;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex].
  /// [bucketNameRegex] Regex to test the bucket name against. If empty, all buckets match. Example: "marketing2021" or "(marketing)\d{4}" will both match the bucket gs://marketing2021
  /// [projectIdRegex] For organizations, if unset, will match all projects.
  PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex({
    this.bucketNameRegex,
    this.projectIdRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketNameRegex': ?bucketNameRegex,
      'projectIdRegex': ?projectIdRegex,
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex(
      bucketNameRegex: (() { final guardedValue = map['bucketNameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectIdRegex: (() { final guardedValue = map['projectIdRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

