// ignore_for_file: unused_element, unnecessary_cast


class BucketHierarchicalNamespace {
  /// Enables hierarchical namespace for the bucket.
  final bool enabled;

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
      enabled: map['enabled'] as bool,
    );
  }
}

