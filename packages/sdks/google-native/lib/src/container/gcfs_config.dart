// ignore_for_file: unused_element, unnecessary_cast


/// GcfsConfig contains configurations of Google Container File System (image streaming).
class GcfsConfig {
  /// Whether to use GCFS.
  final bool? enabled;

  /// Creates a new [GcfsConfig].
  /// [enabled] Whether to use GCFS.
  GcfsConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GcfsConfig.fromMap(Map<String, dynamic> map) {
    return GcfsConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

