// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage {
  /// Relative path from the source to the Skaffold file.
  final pulumi.Input<String>? path;
  /// Cloud Storage source paths to copy recursively. For example, providing `gs://my-bucket/dir/configs/*` will result in Skaffold copying all files within the `dir/configs` directory in the bucket `my-bucket`.
  final pulumi.Input<String> source;

  /// Creates a new [CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage].
  /// [path] Relative path from the source to the Skaffold file.
  /// [source] Cloud Storage source paths to copy recursively. For example, providing `gs://my-bucket/dir/configs/*` will result in Skaffold copying all files within the `dir/configs` directory in the bucket `my-bucket`.
  CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage({
    this.path,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'source': source,
    };
  }

  factory CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage(
      path: map['path'] == null ? null : (map['path']! as String).input(),
      source: (map['source'] as String).input(),
    );
  }
}

