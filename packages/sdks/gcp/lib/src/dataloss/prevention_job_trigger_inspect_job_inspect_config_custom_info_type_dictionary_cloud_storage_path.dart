// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath {
  /// A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  final pulumi.Input<String> path;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath].
  /// [path] A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  const PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

