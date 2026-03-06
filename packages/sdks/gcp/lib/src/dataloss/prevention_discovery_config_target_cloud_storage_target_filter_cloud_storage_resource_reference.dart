// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference {
  /// The bucket to scan.
  final pulumi.Input<String>? bucketName;
  /// If within a project-level config, then this must match the config's project id.
  final pulumi.Input<String>? projectId;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference].
  /// [bucketName] The bucket to scan.
  /// [projectId] If within a project-level config, then this must match the config's project id.
  const PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference({
    this.bucketName,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'projectId': ?projectId,
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference(
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

