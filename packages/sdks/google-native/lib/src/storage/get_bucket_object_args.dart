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
  final pulumi.Input<String> object_;
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
  /// [object_] Required.
  /// [projection] Optional.
  /// [softDeleted] Optional.
  /// [userProject] Optional.
  const GetBucketObjectArgs({
    required this.bucket,
    this.generation,
    this.ifGenerationMatch,
    this.ifGenerationNotMatch,
    this.ifMetagenerationMatch,
    this.ifMetagenerationNotMatch,
    required this.object_,
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
      'object': object_,
      'projection': ?projection,
      'softDeleted': ?softDeleted,
      'userProject': ?userProject,
    };
  }

  factory GetBucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ifGenerationMatch: (() { final guardedValue = map['ifGenerationMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ifGenerationNotMatch: (() { final guardedValue = map['ifGenerationNotMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ifMetagenerationMatch: (() { final guardedValue = map['ifMetagenerationMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ifMetagenerationNotMatch: (() { final guardedValue = map['ifMetagenerationNotMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
      projection: (() { final guardedValue = map['projection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softDeleted: (() { final guardedValue = map['softDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userProject: (() { final guardedValue = map['userProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

