// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for controlling master global access settings.
class PrivateClusterMasterGlobalAccessConfig {
  /// Whenever master is accessible globally or not.
  final bool? enabled;

  /// Creates a new [PrivateClusterMasterGlobalAccessConfig].
  /// [enabled] Whenever master is accessible globally or not.
  PrivateClusterMasterGlobalAccessConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory PrivateClusterMasterGlobalAccessConfig.fromMap(Map<String, dynamic> map) {
    return PrivateClusterMasterGlobalAccessConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

