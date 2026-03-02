// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_update_run_stage_group.dart';

class FleetUpdateRunStage {
  /// Specifies the time in seconds to wait at the end of this stage before starting the next one.
  final pulumi.Input<int>? afterStageWaitInSeconds;
  /// One or more `group` blocks as defined below.
  final pulumi.Input<List<FleetUpdateRunStageGroup>> groups;
  /// The name which should be used for this stage.
  final pulumi.Input<String> name;

  /// Creates a new [FleetUpdateRunStage].
  /// [afterStageWaitInSeconds] Specifies the time in seconds to wait at the end of this stage before starting the next one.
  /// [groups] One or more `group` blocks as defined below.
  /// [name] The name which should be used for this stage.
  FleetUpdateRunStage({
    this.afterStageWaitInSeconds,
    required this.groups,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterStageWaitInSeconds': ?afterStageWaitInSeconds,
      'groups': pulumi.Input.mapInputValue<List<FleetUpdateRunStageGroup>, List<Map<String, dynamic>>>(groups, (value) => pulumi.Input.encodeList<FleetUpdateRunStageGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory FleetUpdateRunStage.fromMap(Map<String, dynamic> map) {
    return FleetUpdateRunStage(
      afterStageWaitInSeconds: map['afterStageWaitInSeconds'] == null ? null : (map['afterStageWaitInSeconds']! as int).input(),
      groups: (pulumi.Input.decodeList<FleetUpdateRunStageGroup>(map['groups'], (value) => FleetUpdateRunStageGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

