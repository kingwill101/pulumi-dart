// ignore_for_file: unused_element, unnecessary_cast


/// The auto provisioning config.
class DefaultRolloutSpecificationAutoProvisionConfig {
  /// Whether auto provisioning for resource graph is enabled.
  final bool? resourceGraph;
  /// Whether auto provisioning for storage is enabled.
  final bool? storage;

  /// Creates a new [DefaultRolloutSpecificationAutoProvisionConfig].
  /// [resourceGraph] Whether auto provisioning for resource graph is enabled.
  /// [storage] Whether auto provisioning for storage is enabled.
  DefaultRolloutSpecificationAutoProvisionConfig({
    this.resourceGraph,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGraph': ?resourceGraph,
      'storage': ?storage,
    };
  }

  factory DefaultRolloutSpecificationAutoProvisionConfig.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationAutoProvisionConfig(
      resourceGraph: map['resourceGraph'] == null ? null : map['resourceGraph'] as bool,
      storage: map['storage'] == null ? null : map['storage'] as bool,
    );
  }
}

