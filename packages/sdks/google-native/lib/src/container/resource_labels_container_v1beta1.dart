// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Collection of [GCP labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).
class ResourceLabelsContainerV1beta1 {
  /// Map of node label keys and node label values.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [ResourceLabelsContainerV1beta1].
  /// [labels] Map of node label keys and node label values.
  const ResourceLabelsContainerV1beta1({
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
    };
  }

  factory ResourceLabelsContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ResourceLabelsContainerV1beta1(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
