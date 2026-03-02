// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_claim_configuration_patch_resource_k8s_io_v1beta1.dart';
import 'device_constraint_patch_resource_k8s_io_v1beta1.dart';
import 'device_request_patch_resource_k8s_io_v1beta1.dart';

/// DeviceClaim defines how to request devices with a ResourceClaim.
class DeviceClaimPatchResourceK8sIoV1beta1 {
  /// This field holds configuration for multiple potential drivers which could satisfy requests in this claim. It is ignored while allocating the claim.
  final pulumi.Input<List<DeviceClaimConfigurationPatchResourceK8sIoV1beta1>>? config;
  /// These constraints must be satisfied by the set of devices that get allocated for the claim.
  final pulumi.Input<List<DeviceConstraintPatchResourceK8sIoV1beta1>>? constraints;
  /// Requests represent individual requests for distinct devices which must all be satisfied. If empty, nothing needs to be allocated.
  final pulumi.Input<List<DeviceRequestPatchResourceK8sIoV1beta1>>? requests;

  /// Creates a new [DeviceClaimPatchResourceK8sIoV1beta1].
  /// [config] This field holds configuration for multiple potential drivers which could satisfy requests in this claim. It is ignored while allocating the claim.
  /// [constraints] These constraints must be satisfied by the set of devices that get allocated for the claim.
  /// [requests] Requests represent individual requests for distinct devices which must all be satisfied. If empty, nothing needs to be allocated.
  DeviceClaimPatchResourceK8sIoV1beta1({
    this.config,
    this.constraints,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<List<DeviceClaimConfigurationPatchResourceK8sIoV1beta1>, List<Map<String, dynamic>>>(config, (value) => pulumi.Input.encodeList<DeviceClaimConfigurationPatchResourceK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'constraints': ?pulumi.Input.mapOptionalInputValue<List<DeviceConstraintPatchResourceK8sIoV1beta1>, List<Map<String, dynamic>>>(constraints, (value) => pulumi.Input.encodeList<DeviceConstraintPatchResourceK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requests': ?pulumi.Input.mapOptionalInputValue<List<DeviceRequestPatchResourceK8sIoV1beta1>, List<Map<String, dynamic>>>(requests, (value) => pulumi.Input.encodeList<DeviceRequestPatchResourceK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceClaimPatchResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DeviceClaimPatchResourceK8sIoV1beta1(
      config: map['config'] == null ? null : (pulumi.Input.decodeList<DeviceClaimConfigurationPatchResourceK8sIoV1beta1>(map['config'], (value) => DeviceClaimConfigurationPatchResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      constraints: map['constraints'] == null ? null : (pulumi.Input.decodeList<DeviceConstraintPatchResourceK8sIoV1beta1>(map['constraints'], (value) => DeviceConstraintPatchResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requests: map['requests'] == null ? null : (pulumi.Input.decodeList<DeviceRequestPatchResourceK8sIoV1beta1>(map['requests'], (value) => DeviceRequestPatchResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

