// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_group_manager_instance_flexibility_policy_instance_selection_disk.dart';

class GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection {
  /// List of disks to be attached to the instances created from this selection.
  final pulumi.Input<List<GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk>> disks;
  /// Full machine-type names, e.g. "n1-standard-16"
  final pulumi.Input<List<String>> machineTypes;
  /// Name of the minimum CPU platform to be used by this instance selection. e.g. 'Intel Ice Lake'
  final pulumi.Input<String> minCpuPlatform;
  /// The name of the instance group. Either `name` or `selfLink` must be provided.
  final pulumi.Input<String> name;
  /// Preference of this instance selection. Lower number means higher preference. MIG will first try to create a VM based on the machine-type with lowest rank and fallback to next rank based on availability. Machine types and instance selections with the same rank have the same preference.
  final pulumi.Input<int> rank;

  /// Creates a new [GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection].
  /// [disks] List of disks to be attached to the instances created from this selection.
  /// [machineTypes] Full machine-type names, e.g. "n1-standard-16"
  /// [minCpuPlatform] Name of the minimum CPU platform to be used by this instance selection. e.g. 'Intel Ice Lake'
  /// [name] The name of the instance group. Either `name` or `selfLink` must be provided.
  /// [rank] Preference of this instance selection. Lower number means higher preference. MIG will first try to create a VM based on the machine-type with lowest rank and fallback to next rank based on availability. Machine types and instance selections with the same rank have the same preference.
  const GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection({
    required this.disks,
    required this.machineTypes,
    required this.minCpuPlatform,
    required this.name,
    required this.rank,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': pulumi.Input.mapInputValue<List<GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'machineTypes': machineTypes,
      'minCpuPlatform': minCpuPlatform,
      'name': name,
      'rank': rank,
    };
  }

  factory GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection(
      disks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk>(map['disks']!, (value) => GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk.fromMap((value as Map).cast<String, dynamic>()))),
      machineTypes: pulumi.Input.fromValue((map['machineTypes'] as List).cast<String>()),
      minCpuPlatform: pulumi.Input.fromValue(map['minCpuPlatform'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      rank: pulumi.Input.fromValue(map['rank'] as int),
    );
  }
}
