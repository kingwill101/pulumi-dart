// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateContainerSourceCodeCloudStorageSource {
  /// The Cloud Storage bucket name.
  final pulumi.Input<String> bucket;

  /// The Cloud Storage object generation. The is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  final pulumi.Input<String> generation;

  /// The Cloud Storage object name.
  final pulumi.Input<String> object_;

  /// Creates a new [GetServiceTemplateContainerSourceCodeCloudStorageSource].
  /// [bucket] The Cloud Storage bucket name.
  /// [generation] The Cloud Storage object generation. The is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  /// [object_] The Cloud Storage object name.
  GetServiceTemplateContainerSourceCodeCloudStorageSource({
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

  factory GetServiceTemplateContainerSourceCodeCloudStorageSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceTemplateContainerSourceCodeCloudStorageSource(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      generation: pulumi.Input.fromValue(map['generation'] as String),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
