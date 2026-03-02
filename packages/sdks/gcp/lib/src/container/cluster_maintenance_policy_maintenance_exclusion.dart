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
  ClusterMaintenancePolicyMaintenanceExclusion({
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
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      exclusionName: (map['exclusionName'] as String).input(),
      exclusionOptions: map['exclusionOptions'] == null ? null : (ClusterMaintenancePolicyMaintenanceExclusionExclusionOptions.fromMap((map['exclusionOptions'] as Map).cast<String, dynamic>())).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

