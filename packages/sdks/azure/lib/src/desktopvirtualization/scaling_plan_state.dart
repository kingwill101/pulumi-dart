// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_host_pool.dart';
import 'scaling_plan_schedule.dart';

/// Input properties used for looking up and filtering ScalingPlan resources.
class ScalingPlanState {
  /// A description of the Scaling Plan.
  final pulumi.Input<String>? description;
  /// The name of the tag associated with the VMs you want to exclude from autoscaling.
  final pulumi.Input<String>? exclusionTag;
  /// Friendly name of the Scaling Plan.
  final pulumi.Input<String>? friendlyName;
  /// One or more `host_pool` blocks as defined below.
  final pulumi.Input<List<ScalingPlanHostPool>>? hostPools;
  /// The Azure Region where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Virtual Desktop Scaling Plan . Changing this forces a new Virtual Desktop Scaling Plan to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// One or more `schedule` blocks as defined below.
  final pulumi.Input<List<ScalingPlanSchedule>>? schedules;
  /// A mapping of tags which should be assigned to the Virtual Desktop Scaling Plan .
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Time Zone which should be used by the Scaling Plan for time based events, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  final pulumi.Input<String>? timeZone;

  /// Creates a new [ScalingPlanState].
  /// [description] A description of the Scaling Plan.
  /// [exclusionTag] The name of the tag associated with the VMs you want to exclude from autoscaling.
  /// [friendlyName] Friendly name of the Scaling Plan.
  /// [hostPools] One or more `host_pool` blocks as defined below.
  /// [location] The Azure Region where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created.
  /// [name] The name which should be used for this Virtual Desktop Scaling Plan . Changing this forces a new Virtual Desktop Scaling Plan to be created.
  /// [resourceGroupName] The name of the Resource Group where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created.
  /// [schedules] One or more `schedule` blocks as defined below.
  /// [tags] A mapping of tags which should be assigned to the Virtual Desktop Scaling Plan .
  /// [timeZone] Specifies the Time Zone which should be used by the Scaling Plan for time based events, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  ScalingPlanState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? exclusionTag,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<List<ScalingPlanHostPool>>? hostPools,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<ScalingPlanSchedule>>? schedules,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? timeZone,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      exclusionTag = pulumi.Input.asOptionalInput<String>(exclusionTag),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      hostPools = pulumi.Input.asOptionalInput<List<ScalingPlanHostPool>>(hostPools),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      schedules = pulumi.Input.asOptionalInput<List<ScalingPlanSchedule>>(schedules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'exclusionTag': ?exclusionTag,
      'friendlyName': ?friendlyName,
      'hostPools': ?pulumi.Input.mapOptionalInputValue<List<ScalingPlanHostPool>, List<Map<String, dynamic>>>(hostPools, (value) => pulumi.Input.encodeList<ScalingPlanHostPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'schedules': ?pulumi.Input.mapOptionalInputValue<List<ScalingPlanSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<ScalingPlanSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'timeZone': ?timeZone,
    };
  }

  factory ScalingPlanState.fromMap(Map<String, dynamic> map) {
    return ScalingPlanState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      exclusionTag: map['exclusionTag'] == null ? null : pulumi.Output.create<String>(map['exclusionTag'] as String),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      hostPools: map['hostPools'] == null ? null : pulumi.Output.create<List<ScalingPlanHostPool>>(pulumi.Input.decodeList<ScalingPlanHostPool>(map['hostPools'], (value) => ScalingPlanHostPool.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schedules: map['schedules'] == null ? null : pulumi.Output.create<List<ScalingPlanSchedule>>(pulumi.Input.decodeList<ScalingPlanSchedule>(map['schedules'], (value) => ScalingPlanSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
    );
  }
}

