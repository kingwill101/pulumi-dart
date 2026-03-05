// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionBuildConfigSourceStorageSource {
  /// Google Cloud Storage bucket containing the source
  final pulumi.Input<String>? bucket;
  /// Google Cloud Storage generation for the object. If the generation
  /// is omitted, the latest generation will be used.
  final pulumi.Input<int>? generation;
  /// Google Cloud Storage object containing the source.
  final pulumi.Input<String>? object_;

  /// Creates a new [FunctionBuildConfigSourceStorageSource].
  /// [bucket] Google Cloud Storage bucket containing the source
  /// [generation] Google Cloud Storage generation for the object. If the generation
  /// [object_] Google Cloud Storage object containing the source.
  FunctionBuildConfigSourceStorageSource({
    this.bucket,
    this.generation,
    this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'generation': ?generation,
      'object': ?object_,
    };
  }

  factory FunctionBuildConfigSourceStorageSource.fromMap(Map<String, dynamic> map) {
    return FunctionBuildConfigSourceStorageSource(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      object_: (() { final guardedValue = map['object']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

