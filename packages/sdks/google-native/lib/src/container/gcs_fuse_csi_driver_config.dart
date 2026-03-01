// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the Cloud Storage Fuse CSI driver.
class GcsFuseCsiDriverConfig {
  /// Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
  final bool? enabled;

  /// Creates a new [GcsFuseCsiDriverConfig].
  /// [enabled] Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
  GcsFuseCsiDriverConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GcsFuseCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return GcsFuseCsiDriverConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

