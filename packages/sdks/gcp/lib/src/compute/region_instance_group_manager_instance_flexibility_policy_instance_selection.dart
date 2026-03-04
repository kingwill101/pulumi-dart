// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_group_manager_instance_flexibility_policy_instance_selection_disk.dart';

class RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection {
  /// List of disks to be attached to the instances created from this selection.
  final pulumi.Input<
    List<
      RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk
    >
  >?
  disks;

  /// Full machine-type names, e.g. "n1-standard-16"
  final pulumi.Input<List<String>> machineTypes;

  /// Name of the minimum CPU platform to be used by this instance selection. e.g. 'Intel Ice Lake'
  final pulumi.Input<String>? minCpuPlatform;

  /// The name of the instance group manager. Must be 1-63
  /// characters long and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Supported characters
  /// include lowercase letters, numbers, and hyphens.
  final pulumi.Input<String> name;

  /// Preference of this instance selection. Lower number means higher preference. MIG will first try to create a VM based on the machine-type with lowest rank and fallback to next rank based on availability. Machine types and instance selections with the same rank have the same preference.
  final pulumi.Input<int>? rank;

  /// Creates a new [RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection].
  /// [disks] List of disks to be attached to the instances created from this selection.
  /// [machineTypes] Full machine-type names, e.g. "n1-standard-16"
  /// [minCpuPlatform] Name of the minimum CPU platform to be used by this instance selection. e.g. 'Intel Ice Lake'
  /// [name] The name of the instance group manager. Must be 1-63
  /// [rank] Preference of this instance selection. Lower number means higher preference. MIG will first try to create a VM based on the machine-type with lowest rank and fallback to next rank based on availability. Machine types and instance selections with the same rank have the same preference.
  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection({
    this.disks,
    required this.machineTypes,
    this.minCpuPlatform,
    required this.name,
    this.rank,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk
            >,
            List<Map<String, dynamic>>
          >(
            disks,
            (value) =>
                pulumi.Input.encodeList<
                  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'machineTypes': machineTypes,
      'minCpuPlatform': ?minCpuPlatform,
      'name': name,
      'rank': ?rank,
    };
  }

  factory RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection(
      disks: (() {
        final guardedValue = map['disks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk
          >(
            guardedValue,
            (value) =>
                RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      machineTypes: pulumi.Input.fromValue(
        (map['machineTypes'] as List).cast<String>(),
      ),
      minCpuPlatform: (() {
        final guardedValue = map['minCpuPlatform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      rank: (() {
        final guardedValue = map['rank'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
