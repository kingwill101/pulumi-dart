// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetUpdateStrategyStageGroup {
  /// The name which should be used for this group.
  final pulumi.Input<String> name;

  /// Creates a new [FleetUpdateStrategyStageGroup].
  /// [name] The name which should be used for this group.
  const FleetUpdateStrategyStageGroup({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory FleetUpdateStrategyStageGroup.fromMap(Map<String, dynamic> map) {
    return FleetUpdateStrategyStageGroup(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

