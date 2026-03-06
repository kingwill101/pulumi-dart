// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerBuildSourceStorageSource {
  /// Google Cloud Storage bucket containing the source.
  final pulumi.Input<String> bucket;
  /// Google Cloud Storage generation for the object.
  /// If the generation is omitted, the latest generation will be used
  final pulumi.Input<String> generation;
  /// Google Cloud Storage object containing the source.
  /// This object must be a gzipped archive file (.tar.gz) containing source to build.
  final pulumi.Input<String> object_;

  /// Creates a new [GetTriggerBuildSourceStorageSource].
  /// [bucket] Google Cloud Storage bucket containing the source.
  /// [generation] Google Cloud Storage generation for the object.
  /// [object_] Google Cloud Storage object containing the source.
  const GetTriggerBuildSourceStorageSource({
    required this.bucket,
    required this.generation,
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': generation,
      'object': object_,
    };
  }

  factory GetTriggerBuildSourceStorageSource.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildSourceStorageSource(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      generation: pulumi.Input.fromValue(map['generation'] as String),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}

