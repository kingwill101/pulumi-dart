// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath {
  /// A URL representing a file or path (no wildcards) in Cloud Storage.
  /// Example: `gs://[BUCKET_NAME]/dictionary.txt`
  final pulumi.Input<String> path;

  /// Creates a new [PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath].
  /// [path] A URL representing a file or path (no wildcards) in Cloud Storage.
  PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path};
  }

  factory PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
