// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceGroupManagerAllInstancesConfig {
  /// , The label key-value pairs that you want to patch onto the instance.
  ///
  /// - - -
  final pulumi.Input<Map<String, String>?>? labels;
  /// , The metadata key-value pairs that you want to patch onto the instance. For more information, see [Project and instance metadata](https://cloud.google.com/compute/docs/metadata#project_and_instance_metadata).
  final pulumi.Input<Map<String, String>?>? metadata;

  /// Creates a new [RegionInstanceGroupManagerAllInstancesConfig].
  /// [labels] , The label key-value pairs that you want to patch onto the instance.
  /// [metadata] , The metadata key-value pairs that you want to patch onto the instance. For more information, see [Project and instance metadata](https://cloud.google.com/compute/docs/metadata#project_and_instance_metadata).
  const RegionInstanceGroupManagerAllInstancesConfig({
    this.labels,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'metadata': ?metadata,
    };
  }

  factory RegionInstanceGroupManagerAllInstancesConfig.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerAllInstancesConfig(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
