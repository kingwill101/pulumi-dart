// ignore_for_file: unused_element, unnecessary_cast


class GetBucketHierarchicalNamespace {
  /// Set this field true to organize bucket with logical file system structure.
  final bool enabled;

  /// Creates a new [GetBucketHierarchicalNamespace].
  /// [enabled] Set this field true to organize bucket with logical file system structure.
  GetBucketHierarchicalNamespace({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetBucketHierarchicalNamespace.fromMap(Map<String, dynamic> map) {
    return GetBucketHierarchicalNamespace(
      enabled: map['enabled'] as bool,
    );
  }
}

