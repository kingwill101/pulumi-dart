// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceGroupManagerAllInstancesConfig {
  /// The label key-value pairs that you want to patch onto the instance,
  final pulumi.Input<Map<String, String>> labels;

  /// The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata,
  final pulumi.Input<Map<String, String>> metadata;

  /// Creates a new [GetInstanceGroupManagerAllInstancesConfig].
  /// [labels] The label key-value pairs that you want to patch onto the instance,
  /// [metadata] The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata,
  GetInstanceGroupManagerAllInstancesConfig({
    required this.labels,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labels': labels, 'metadata': metadata};
  }

  factory GetInstanceGroupManagerAllInstancesConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceGroupManagerAllInstancesConfig(
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      metadata: pulumi.Input.fromValue(
        (map['metadata'] as Map).cast<String, String>(),
      ),
    );
  }
}
