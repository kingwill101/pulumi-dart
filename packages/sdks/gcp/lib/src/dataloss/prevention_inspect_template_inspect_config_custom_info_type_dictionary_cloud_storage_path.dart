// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath {
  /// A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  final pulumi.Input<String> path;

  /// Creates a new [PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath].
  /// [path] A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  const PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
