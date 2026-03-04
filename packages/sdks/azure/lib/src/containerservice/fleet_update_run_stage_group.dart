// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetUpdateRunStageGroup {
  /// The name which should be used for this group.
  final pulumi.Input<String> name;

  /// Creates a new [FleetUpdateRunStageGroup].
  /// [name] The name which should be used for this group.
  FleetUpdateRunStageGroup({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory FleetUpdateRunStageGroup.fromMap(Map<String, dynamic> map) {
    return FleetUpdateRunStageGroup(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
