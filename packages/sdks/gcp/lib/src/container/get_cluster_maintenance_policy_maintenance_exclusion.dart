// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_maintenance_policy_maintenance_exclusion_exclusion_option.dart';

class GetClusterMaintenancePolicyMaintenanceExclusion {
  final pulumi.Input<String> endTime;
  final pulumi.Input<String> exclusionName;
  /// Maintenance exclusion related options.
  final pulumi.Input<List<GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption>> exclusionOptions;
  final pulumi.Input<String> startTime;

  /// Creates a new [GetClusterMaintenancePolicyMaintenanceExclusion].
  /// [endTime] Required.
  /// [exclusionName] Required.
  /// [exclusionOptions] Maintenance exclusion related options.
  /// [startTime] Required.
  const GetClusterMaintenancePolicyMaintenanceExclusion({
    required this.endTime,
    required this.exclusionName,
    required this.exclusionOptions,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'exclusionName': exclusionName,
      'exclusionOptions': pulumi.Input.mapInputValue<List<GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption>, List<Map<String, dynamic>>>(exclusionOptions, (value) => pulumi.Input.encodeList<GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTime': startTime,
    };
  }

  factory GetClusterMaintenancePolicyMaintenanceExclusion.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenancePolicyMaintenanceExclusion(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      exclusionName: pulumi.Input.fromValue(map['exclusionName'] as String),
      exclusionOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption>(map['exclusionOptions']!, (value) => GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption.fromMap((value as Map).cast<String, dynamic>()))),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

