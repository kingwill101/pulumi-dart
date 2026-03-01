// ignore_for_file: unused_element, unnecessary_cast


class ConfigurationFeatureTargetingFilterGroup {
  /// The name of the group.
  final String name;
  /// Rollout percentage of the group.
  final int rolloutPercentage;

  /// Creates a new [ConfigurationFeatureTargetingFilterGroup].
  /// [name] The name of the group.
  /// [rolloutPercentage] Rollout percentage of the group.
  ConfigurationFeatureTargetingFilterGroup({
    required this.name,
    required this.rolloutPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'rolloutPercentage': rolloutPercentage,
    };
  }

  factory ConfigurationFeatureTargetingFilterGroup.fromMap(Map<String, dynamic> map) {
    return ConfigurationFeatureTargetingFilterGroup(
      name: map['name'] as String,
      rolloutPercentage: map['rolloutPercentage'] as int,
    );
  }
}

