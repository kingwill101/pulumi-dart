// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the change that you want to make to the instance properties.
class InstancePropertiesPatchComputeBeta {
  /// The label key-value pairs that you want to patch onto the instance.
  final pulumi.Input<Map<String, String>>? labels;
  /// The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata.
  final pulumi.Input<Map<String, String>>? metadata;

  /// Creates a new [InstancePropertiesPatchComputeBeta].
  /// [labels] The label key-value pairs that you want to patch onto the instance.
  /// [metadata] The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata.
  InstancePropertiesPatchComputeBeta({
    this.labels,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'metadata': ?metadata,
    };
  }

  factory InstancePropertiesPatchComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesPatchComputeBeta(
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
    );
  }
}

