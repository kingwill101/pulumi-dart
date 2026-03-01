// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'engine_split_traffic_split.dart';

/// Input properties used for looking up and filtering EngineSplitTraffic resources.
class EngineSplitTrafficState {
  /// If set to true traffic will be migrated to this version.
  final pulumi.Input<bool>? migrateTraffic;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the service these settings apply to.
  final pulumi.Input<String>? service;
  /// Mapping that defines fractional HTTP traffic diversion to different versions within the service.
  /// Structure is documented below.
  final pulumi.Input<EngineSplitTrafficSplit>? split;

  /// Creates a new [EngineSplitTrafficState].
  /// [migrateTraffic] If set to true traffic will be migrated to this version.
  /// [project] The ID of the project in which the resource belongs.
  /// [service] The name of the service these settings apply to.
  /// [split] Mapping that defines fractional HTTP traffic diversion to different versions within the service.
  EngineSplitTrafficState({
    pulumi.Output<bool>? migrateTraffic,
    pulumi.Output<String>? project,
    pulumi.Output<String>? service,
    pulumi.Output<EngineSplitTrafficSplit>? split,
  }) :
      migrateTraffic = pulumi.Input.asOptionalInput<bool>(migrateTraffic),
      project = pulumi.Input.asOptionalInput<String>(project),
      service = pulumi.Input.asOptionalInput<String>(service),
      split = pulumi.Input.asOptionalInput<EngineSplitTrafficSplit>(split);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrateTraffic': ?migrateTraffic,
      'project': ?project,
      'service': ?service,
      'split': ?pulumi.Input.mapOptionalInputValue<EngineSplitTrafficSplit, Map<String, dynamic>>(split, (value) => value.toMap()),
    };
  }

  factory EngineSplitTrafficState.fromMap(Map<String, dynamic> map) {
    return EngineSplitTrafficState(
      migrateTraffic: map['migrateTraffic'] == null ? null : pulumi.Output.create<bool>(map['migrateTraffic'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      service: map['service'] == null ? null : pulumi.Output.create<String>(map['service'] as String),
      split: map['split'] == null ? null : pulumi.Output.create<EngineSplitTrafficSplit>(EngineSplitTrafficSplit.fromMap((map['split'] as Map).cast<String, dynamic>())),
    );
  }
}

