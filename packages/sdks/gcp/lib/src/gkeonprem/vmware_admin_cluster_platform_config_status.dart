// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_platform_config_status_condition.dart';

class VmwareAdminClusterPlatformConfigStatus {
  /// (Output)
  /// ResourceConditions provide a standard mechanism for higher-level status reporting from admin cluster controller.
  /// Structure is documented below.
  final pulumi.Input<List<VmwareAdminClusterPlatformConfigStatusCondition>>? conditions;
  /// (Output)
  /// Human-friendly representation of the error message from the admin cluster
  /// controller. The error message can be temporary as the admin cluster
  /// controller creates a cluster or node pool. If the error message persists
  /// for a longer period of time, it can be used to surface error message to
  /// indicate real problems requiring user intervention.
  final pulumi.Input<String>? errorMessage;

  /// Creates a new [VmwareAdminClusterPlatformConfigStatus].
  /// [conditions] (Output)
  /// [errorMessage] (Output)
  VmwareAdminClusterPlatformConfigStatus({
    this.conditions,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<VmwareAdminClusterPlatformConfigStatusCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<VmwareAdminClusterPlatformConfigStatusCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errorMessage': ?errorMessage,
    };
  }

  factory VmwareAdminClusterPlatformConfigStatus.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterPlatformConfigStatus(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<VmwareAdminClusterPlatformConfigStatusCondition>(map['conditions'], (value) => VmwareAdminClusterPlatformConfigStatusCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
    );
  }
}

