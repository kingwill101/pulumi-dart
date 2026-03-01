// ignore_for_file: unused_element, unnecessary_cast


/// ILBSubsettingConfig contains the desired config of L4 Internal LoadBalancer subsetting on this cluster.
class ILBSubsettingConfig {
  /// Enables l4 ILB subsetting for this cluster.
  final bool? enabled;

  /// Creates a new [ILBSubsettingConfig].
  /// [enabled] Enables l4 ILB subsetting for this cluster.
  ILBSubsettingConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ILBSubsettingConfig.fromMap(Map<String, dynamic> map) {
    return ILBSubsettingConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

