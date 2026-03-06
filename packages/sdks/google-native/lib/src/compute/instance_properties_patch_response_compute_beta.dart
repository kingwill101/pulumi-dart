// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the change that you want to make to the instance properties.
class InstancePropertiesPatchResponseComputeBeta {
  /// The label key-value pairs that you want to patch onto the instance.
  final pulumi.Input<Map<String, String>> labels;
  /// The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata.
  final pulumi.Input<Map<String, String>> metadata;

  /// Creates a new [InstancePropertiesPatchResponseComputeBeta].
  /// [labels] The label key-value pairs that you want to patch onto the instance.
  /// [metadata] The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata.
  const InstancePropertiesPatchResponseComputeBeta({
    required this.labels,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': labels,
      'metadata': metadata,
    };
  }

  factory InstancePropertiesPatchResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesPatchResponseComputeBeta(
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
    );
  }
}

