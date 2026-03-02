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
  GetClusterMaintenancePolicyMaintenanceExclusion({
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
      endTime: (map['endTime'] as String).input(),
      exclusionName: (map['exclusionName'] as String).input(),
      exclusionOptions: (pulumi.Input.decodeList<GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption>(map['exclusionOptions'], (value) => GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

