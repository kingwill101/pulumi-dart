// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketHierarchicalNamespace {
  /// Set this field true to organize bucket with logical file system structure.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetBucketHierarchicalNamespace].
  /// [enabled] Set this field true to organize bucket with logical file system structure.
  GetBucketHierarchicalNamespace({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetBucketHierarchicalNamespace.fromMap(Map<String, dynamic> map) {
    return GetBucketHierarchicalNamespace(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
