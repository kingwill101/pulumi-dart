// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_update_strategy_stage_group.dart';

class FleetUpdateStrategyStage {
  /// Specifies the time in seconds to wait at the end of this stage before starting the next one.
  final pulumi.Input<int>? afterStageWaitInSeconds;
  /// One or more `group` blocks as defined below.
  final pulumi.Input<List<FleetUpdateStrategyStageGroup>> groups;
  /// The name which should be used for this stage.
  final pulumi.Input<String> name;

  /// Creates a new [FleetUpdateStrategyStage].
  /// [afterStageWaitInSeconds] Specifies the time in seconds to wait at the end of this stage before starting the next one.
  /// [groups] One or more `group` blocks as defined below.
  /// [name] The name which should be used for this stage.
  FleetUpdateStrategyStage({
    this.afterStageWaitInSeconds,
    required this.groups,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterStageWaitInSeconds': ?afterStageWaitInSeconds,
      'groups': pulumi.Input.mapInputValue<List<FleetUpdateStrategyStageGroup>, List<Map<String, dynamic>>>(groups, (value) => pulumi.Input.encodeList<FleetUpdateStrategyStageGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory FleetUpdateStrategyStage.fromMap(Map<String, dynamic> map) {
    return FleetUpdateStrategyStage(
      afterStageWaitInSeconds: map['afterStageWaitInSeconds'] == null ? null : (map['afterStageWaitInSeconds'] as int).input(),
      groups: (pulumi.Input.decodeList<FleetUpdateStrategyStageGroup>(map['groups'], (value) => FleetUpdateStrategyStageGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

