// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateContainerSourceCodeCloudStorageSource {
  /// The Cloud Storage bucket name.
  final pulumi.Input<String> bucket;
  /// The Cloud Storage object generation. The is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  final pulumi.Input<String> generation;
  /// The Cloud Storage object name.
  final pulumi.Input<String> object;

  /// Creates a new [GetServiceTemplateContainerSourceCodeCloudStorageSource].
  /// [bucket] The Cloud Storage bucket name.
  /// [generation] The Cloud Storage object generation. The is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  /// [object] The Cloud Storage object name.
  GetServiceTemplateContainerSourceCodeCloudStorageSource({
    required this.bucket,
    required this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': generation,
      'object': object,
    };
  }

  factory GetServiceTemplateContainerSourceCodeCloudStorageSource.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerSourceCodeCloudStorageSource(
      bucket: (map['bucket'] as String).input(),
      generation: (map['generation'] as String).input(),
      object: (map['object'] as String).input(),
    );
  }
}

