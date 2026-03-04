// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the change that you want to make to the instance properties.
class InstancePropertiesPatch {
  /// The label key-value pairs that you want to patch onto the instance.
  final pulumi.Input<Map<String, String>>? labels;

  /// The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata.
  final pulumi.Input<Map<String, String>>? metadata;

  /// Creates a new [InstancePropertiesPatch].
  /// [labels] The label key-value pairs that you want to patch onto the instance.
  /// [metadata] The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata.
  InstancePropertiesPatch({this.labels, this.metadata});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labels': ?labels, 'metadata': ?metadata};
  }

  factory InstancePropertiesPatch.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesPatch(
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
