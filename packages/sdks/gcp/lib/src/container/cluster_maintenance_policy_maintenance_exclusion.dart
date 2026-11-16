// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_maintenance_policy_maintenance_exclusion_exclusion_options.dart';

class ClusterMaintenancePolicyMaintenanceExclusion {
  /// The end time of the exclusion window, in RFC3339 format. Exactly one of `endTime` and `exclusion_options.end_time_behavior` should be specified.
  final pulumi.Input<String?>? endTime;
  /// The name of the maintenance exclusion.
  final pulumi.Input<String> exclusionName;
  /// MaintenanceExclusionOptions provides maintenance exclusion related options. Structure is documented below.
  final pulumi.Input<ClusterMaintenancePolicyMaintenanceExclusionExclusionOptions?>? exclusionOptions;
  /// The start time of the exclusion window, in RFC3339 format.
  final pulumi.Input<String> startTime;

  /// Creates a new [ClusterMaintenancePolicyMaintenanceExclusion].
  /// [endTime] The end time of the exclusion window, in RFC3339 format. Exactly one of `endTime` and `exclusion_options.end_time_behavior` should be specified.
  /// [exclusionName] The name of the maintenance exclusion.
  /// [exclusionOptions] MaintenanceExclusionOptions provides maintenance exclusion related options. Structure is documented below.
  /// [startTime] The start time of the exclusion window, in RFC3339 format.
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
