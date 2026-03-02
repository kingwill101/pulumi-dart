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
    this.migrateTraffic,
    this.project,
    this.service,
    this.split,
  });

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
      migrateTraffic: map['migrateTraffic'] == null ? null : (map['migrateTraffic'] as bool).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      service: map['service'] == null ? null : (map['service'] as String).input(),
      split: map['split'] == null ? null : (EngineSplitTrafficSplit.fromMap((map['split'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

