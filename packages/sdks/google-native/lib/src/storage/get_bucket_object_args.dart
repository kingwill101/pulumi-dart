// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_bucket_object_args_doc}
/// Arguments for getBucketObject.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_bucket_object_args_doc}
class GetBucketObjectArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String>? generation;
  final pulumi.Input<String>? ifGenerationMatch;
  final pulumi.Input<String>? ifGenerationNotMatch;
  final pulumi.Input<String>? ifMetagenerationMatch;
  final pulumi.Input<String>? ifMetagenerationNotMatch;
  final pulumi.Input<String> object;
  final pulumi.Input<String>? projection;
  final pulumi.Input<bool>? softDeleted;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetBucketObjectArgs].
  /// [bucket] Required.
  /// [generation] Optional.
  /// [ifGenerationMatch] Optional.
  /// [ifGenerationNotMatch] Optional.
  /// [ifMetagenerationMatch] Optional.
  /// [ifMetagenerationNotMatch] Optional.
  /// [object] Required.
  /// [projection] Optional.
  /// [softDeleted] Optional.
  /// [userProject] Optional.
  GetBucketObjectArgs({
    required this.bucket,
    this.generation,
    this.ifGenerationMatch,
    this.ifGenerationNotMatch,
    this.ifMetagenerationMatch,
    this.ifMetagenerationNotMatch,
    required this.object,
    this.projection,
    this.softDeleted,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': ?generation,
      'ifGenerationMatch': ?ifGenerationMatch,
      'ifGenerationNotMatch': ?ifGenerationNotMatch,
      'ifMetagenerationMatch': ?ifMetagenerationMatch,
      'ifMetagenerationNotMatch': ?ifMetagenerationNotMatch,
      'object': object,
      'projection': ?projection,
      'softDeleted': ?softDeleted,
      'userProject': ?userProject,
    };
  }

  factory GetBucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectArgs(
      bucket: (map['bucket'] as String).input(),
      generation: map['generation'] == null ? null : (map['generation'] as String).input(),
      ifGenerationMatch: map['ifGenerationMatch'] == null ? null : (map['ifGenerationMatch'] as String).input(),
      ifGenerationNotMatch: map['ifGenerationNotMatch'] == null ? null : (map['ifGenerationNotMatch'] as String).input(),
      ifMetagenerationMatch: map['ifMetagenerationMatch'] == null ? null : (map['ifMetagenerationMatch'] as String).input(),
      ifMetagenerationNotMatch: map['ifMetagenerationNotMatch'] == null ? null : (map['ifMetagenerationNotMatch'] as String).input(),
      object: (map['object'] as String).input(),
      projection: map['projection'] == null ? null : (map['projection'] as String).input(),
      softDeleted: map['softDeleted'] == null ? null : (map['softDeleted'] as bool).input(),
      userProject: map['userProject'] == null ? null : (map['userProject'] as String).input(),
    );
  }
}

