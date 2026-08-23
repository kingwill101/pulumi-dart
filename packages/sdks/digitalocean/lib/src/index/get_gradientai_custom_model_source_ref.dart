// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiCustomModelSourceRef {
  /// Access type for the source repository (e.g. ACCESS_TYPE_PUBLIC).
  final pulumi.Input<String> accessType;
  /// Spaces bucket name for SPACES_BUCKET sources.
  final pulumi.Input<String> bucket;
  /// Commit SHA pinned for the import.
  final pulumi.Input<String> commitSha;
  /// Key prefix inside the source bucket.
  final pulumi.Input<String> prefix;
  /// Region of the source bucket.
  final pulumi.Input<String> region;
  /// Repository identifier (e.g. HuggingFace repo).
  final pulumi.Input<String> repoId;

  /// Creates a new [GetGradientaiCustomModelSourceRef].
  /// [accessType] Access type for the source repository (e.g. ACCESS_TYPE_PUBLIC).
  /// [bucket] Spaces bucket name for SPACES_BUCKET sources.
  /// [commitSha] Commit SHA pinned for the import.
  /// [prefix] Key prefix inside the source bucket.
  /// [region] Region of the source bucket.
  /// [repoId] Repository identifier (e.g. HuggingFace repo).
  const GetGradientaiCustomModelSourceRef({
    required this.accessType,
    required this.bucket,
    required this.commitSha,
    required this.prefix,
    required this.region,
    required this.repoId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': accessType,
      'bucket': bucket,
      'commitSha': commitSha,
      'prefix': prefix,
      'region': region,
      'repoId': repoId,
    };
  }

  factory GetGradientaiCustomModelSourceRef.fromMap(Map<String, dynamic> map) {
    return GetGradientaiCustomModelSourceRef(
      accessType: pulumi.Input.fromValue(map['accessType'] as String),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      commitSha: pulumi.Input.fromValue(map['commitSha'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      repoId: pulumi.Input.fromValue(map['repoId'] as String),
    );
  }
}
