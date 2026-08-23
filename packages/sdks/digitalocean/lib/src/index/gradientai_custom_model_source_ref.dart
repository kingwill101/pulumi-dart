// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GradientaiCustomModelSourceRef {
  /// Access type for the source repository. One of ACCESS_TYPE_PUBLIC, ACCESS_TYPE_PRIVATE, ACCESS_TYPE_GATED.
  final pulumi.Input<String>? accessType;
  /// Spaces bucket name for SOURCE_TYPE_SPACES_BUCKET sources.
  final pulumi.Input<String>? bucket;
  /// Commit SHA to pin for the import. If omitted, the API resolves and returns the SHA actually imported.
  final pulumi.Input<String>? commitSha;
  /// HuggingFace token used to access ACCESS_TYPE_PRIVATE or ACCESS_TYPE_GATED repositories. Write-only.
  final pulumi.Input<String>? hfToken;
  /// Key prefix inside the source bucket.
  final pulumi.Input<String>? prefix;
  /// Region of the source bucket.
  final pulumi.Input<String>? region;
  /// Repository identifier (e.g. the HuggingFace repo). Required for SOURCE_TYPE_HUGGINGFACE sources.
  final pulumi.Input<String>? repoId;

  /// Creates a new [GradientaiCustomModelSourceRef].
  /// [accessType] Access type for the source repository. One of ACCESS_TYPE_PUBLIC, ACCESS_TYPE_PRIVATE, ACCESS_TYPE_GATED.
  /// [bucket] Spaces bucket name for SOURCE_TYPE_SPACES_BUCKET sources.
  /// [commitSha] Commit SHA to pin for the import. If omitted, the API resolves and returns the SHA actually imported.
  /// [hfToken] HuggingFace token used to access ACCESS_TYPE_PRIVATE or ACCESS_TYPE_GATED repositories. Write-only.
  /// [prefix] Key prefix inside the source bucket.
  /// [region] Region of the source bucket.
  /// [repoId] Repository identifier (e.g. the HuggingFace repo). Required for SOURCE_TYPE_HUGGINGFACE sources.
  const GradientaiCustomModelSourceRef({
    this.accessType,
    this.bucket,
    this.commitSha,
    this.hfToken,
    this.prefix,
    this.region,
    this.repoId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'bucket': ?bucket,
      'commitSha': ?commitSha,
      'hfToken': ?hfToken,
      'prefix': ?prefix,
      'region': ?region,
      'repoId': ?repoId,
    };
  }

  factory GradientaiCustomModelSourceRef.fromMap(Map<String, dynamic> map) {
    return GradientaiCustomModelSourceRef(
      accessType: (() { final guardedValue = map['accessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitSha: (() { final guardedValue = map['commitSha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hfToken: (() { final guardedValue = map['hfToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoId: (() { final guardedValue = map['repoId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
