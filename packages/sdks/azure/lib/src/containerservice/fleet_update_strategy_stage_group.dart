// ignore_for_file: unused_element, unnecessary_cast


class FleetUpdateStrategyStageGroup {
  /// The name which should be used for this group.
  final String name;

  /// Creates a new [FleetUpdateStrategyStageGroup].
  /// [name] The name which should be used for this group.
  FleetUpdateStrategyStageGroup({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory FleetUpdateStrategyStageGroup.fromMap(Map<String, dynamic> map) {
    return FleetUpdateStrategyStageGroup(
      name: map['name'] as String,
    );
  }
}

