// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateContainerSourceCodeCloudStorageSource {
  /// The Cloud Storage bucket name.
  final pulumi.Input<String> bucket;
  /// The Cloud Storage object generation. The is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  final pulumi.Input<String>? generation;
  /// The Cloud Storage object name.
  final pulumi.Input<String> object_;

  /// Creates a new [ServiceTemplateContainerSourceCodeCloudStorageSource].
  /// [bucket] The Cloud Storage bucket name.
  /// [generation] The Cloud Storage object generation. The is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  /// [object_] The Cloud Storage object name.
  const ServiceTemplateContainerSourceCodeCloudStorageSource({
    required this.bucket,
    this.generation,
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': ?generation,
      'object': object_,
    };
  }

  factory ServiceTemplateContainerSourceCodeCloudStorageSource.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerSourceCodeCloudStorageSource(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}

