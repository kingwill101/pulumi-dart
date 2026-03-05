// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketHierarchicalNamespace {
  /// Enables hierarchical namespace for the bucket.
  final pulumi.Input<bool> enabled;

  /// Creates a new [BucketHierarchicalNamespace].
  /// [enabled] Enables hierarchical namespace for the bucket.
  BucketHierarchicalNamespace({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory BucketHierarchicalNamespace.fromMap(Map<String, dynamic> map) {
    return BucketHierarchicalNamespace(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

