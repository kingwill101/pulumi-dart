// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_platform_config_bundle_status_condition.dart';

class VmwareAdminClusterPlatformConfigBundleStatus {
  /// (Output)
  /// ResourceConditions provide a standard mechanism for higher-level status reporting from admin cluster controller.
  /// Structure is documented below.
  final pulumi.Input<List<VmwareAdminClusterPlatformConfigBundleStatusCondition>>? conditions;
  /// (Output)
  /// Human-friendly representation of the error message from the admin cluster
  /// controller. The error message can be temporary as the admin cluster
  /// controller creates a cluster or node pool. If the error message persists
  /// for a longer period of time, it can be used to surface error message to
  /// indicate real problems requiring user intervention.
  final pulumi.Input<String>? errorMessage;

  /// Creates a new [VmwareAdminClusterPlatformConfigBundleStatus].
  /// [conditions] (Output)
  /// [errorMessage] (Output)
  VmwareAdminClusterPlatformConfigBundleStatus({
    this.conditions,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<VmwareAdminClusterPlatformConfigBundleStatusCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<VmwareAdminClusterPlatformConfigBundleStatusCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errorMessage': ?errorMessage,
    };
  }

  factory VmwareAdminClusterPlatformConfigBundleStatus.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterPlatformConfigBundleStatus(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<VmwareAdminClusterPlatformConfigBundleStatusCondition>(map['conditions']!, (value) => VmwareAdminClusterPlatformConfigBundleStatusCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage']! as String).input(),
    );
  }
}

