// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_maintenance_policy_maintenance_exclusion_exclusion_options.dart';

class ClusterMaintenancePolicyMaintenanceExclusion {
  final pulumi.Input<String>? endTime;
  final pulumi.Input<String> exclusionName;
  /// MaintenanceExclusionOptions provides maintenance exclusion related options.
  final pulumi.Input<ClusterMaintenancePolicyMaintenanceExclusionExclusionOptions>? exclusionOptions;
  final pulumi.Input<String> startTime;

  /// Creates a new [ClusterMaintenancePolicyMaintenanceExclusion].
  /// [endTime] Optional.
  /// [exclusionName] Required.
  /// [exclusionOptions] MaintenanceExclusionOptions provides maintenance exclusion related options.
  /// [startTime] Required.
  const ClusterMaintenancePolicyMaintenanceExclusion({
    this.endTime,
    required this.exclusionName,
    this.exclusionOptions,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'exclusionName': exclusionName,
      'exclusionOptions': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicyMaintenanceExclusionExclusionOptions, Map<String, dynamic>>(exclusionOptions, (value) => value.toMap()),
      'startTime': startTime,
    };
  }

  factory ClusterMaintenancePolicyMaintenanceExclusion.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyMaintenanceExclusion(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exclusionName: pulumi.Input.fromValue(map['exclusionName'] as String),
      exclusionOptions: (() { final guardedValue = map['exclusionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMaintenancePolicyMaintenanceExclusionExclusionOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

