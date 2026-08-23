// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_claim_configuration_patch.dart';
import 'device_constraint_patch.dart';
import 'device_request_patch.dart';

/// DeviceClaim defines how to request devices with a ResourceClaim.
class DeviceClaimPatch {
  /// This field holds configuration for multiple potential drivers which could satisfy requests in this claim. It is ignored while allocating the claim.
  final pulumi.Input<List<DeviceClaimConfigurationPatch>>? config;
  /// These constraints must be satisfied by the set of devices that get allocated for the claim.
  final pulumi.Input<List<DeviceConstraintPatch>>? constraints;
  /// Requests represent individual requests for distinct devices which must all be satisfied. If empty, nothing needs to be allocated.
  final pulumi.Input<List<DeviceRequestPatch>>? requests;

  /// Creates a new [DeviceClaimPatch].
  /// [config] This field holds configuration for multiple potential drivers which could satisfy requests in this claim. It is ignored while allocating the claim.
  /// [constraints] These constraints must be satisfied by the set of devices that get allocated for the claim.
  /// [requests] Requests represent individual requests for distinct devices which must all be satisfied. If empty, nothing needs to be allocated.
  const DeviceClaimPatch({
    this.config,
    this.constraints,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<List<DeviceClaimConfigurationPatch>, List<Map<String, dynamic>>>(config, (value) => pulumi.Input.encodeList<DeviceClaimConfigurationPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'constraints': ?pulumi.Input.mapOptionalInputValue<List<DeviceConstraintPatch>, List<Map<String, dynamic>>>(constraints, (value) => pulumi.Input.encodeList<DeviceConstraintPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requests': ?pulumi.Input.mapOptionalInputValue<List<DeviceRequestPatch>, List<Map<String, dynamic>>>(requests, (value) => pulumi.Input.encodeList<DeviceRequestPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceClaimPatch.fromMap(Map<String, dynamic> map) {
    return DeviceClaimPatch(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceClaimConfigurationPatch>(guardedValue, (value) => DeviceClaimConfigurationPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      constraints: (() { final guardedValue = map['constraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceConstraintPatch>(guardedValue, (value) => DeviceConstraintPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceRequestPatch>(guardedValue, (value) => DeviceRequestPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
