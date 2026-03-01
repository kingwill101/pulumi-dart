// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_claim_configuration_resource_k8s_io_v1beta2.dart';
import 'device_constraint_resource_k8s_io_v1beta2.dart';
import 'device_request_resource_k8s_io_v1beta2.dart';

/// DeviceClaim defines how to request devices with a ResourceClaim.
class DeviceClaimResourceK8sIoV1beta2 {
  /// This field holds configuration for multiple potential drivers which could satisfy requests in this claim. It is ignored while allocating the claim.
  final List<DeviceClaimConfigurationResourceK8sIoV1beta2>? config;
  /// These constraints must be satisfied by the set of devices that get allocated for the claim.
  final List<DeviceConstraintResourceK8sIoV1beta2>? constraints;
  /// Requests represent individual requests for distinct devices which must all be satisfied. If empty, nothing needs to be allocated.
  final List<DeviceRequestResourceK8sIoV1beta2>? requests;

  /// Creates a new [DeviceClaimResourceK8sIoV1beta2].
  /// [config] This field holds configuration for multiple potential drivers which could satisfy requests in this claim. It is ignored while allocating the claim.
  /// [constraints] These constraints must be satisfied by the set of devices that get allocated for the claim.
  /// [requests] Requests represent individual requests for distinct devices which must all be satisfied. If empty, nothing needs to be allocated.
  DeviceClaimResourceK8sIoV1beta2({
    this.config,
    this.constraints,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config == null ? null : pulumi.Input.encodeList<DeviceClaimConfigurationResourceK8sIoV1beta2, Map<String, dynamic>>(config!, (value) => value.toMap()),
      'constraints': ?constraints == null ? null : pulumi.Input.encodeList<DeviceConstraintResourceK8sIoV1beta2, Map<String, dynamic>>(constraints!, (value) => value.toMap()),
      'requests': ?requests == null ? null : pulumi.Input.encodeList<DeviceRequestResourceK8sIoV1beta2, Map<String, dynamic>>(requests!, (value) => value.toMap()),
    };
  }

  factory DeviceClaimResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceClaimResourceK8sIoV1beta2(
      config: map['config'] == null ? null : pulumi.Input.decodeList<DeviceClaimConfigurationResourceK8sIoV1beta2>(map['config'], (value) => DeviceClaimConfigurationResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      constraints: map['constraints'] == null ? null : pulumi.Input.decodeList<DeviceConstraintResourceK8sIoV1beta2>(map['constraints'], (value) => DeviceConstraintResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      requests: map['requests'] == null ? null : pulumi.Input.decodeList<DeviceRequestResourceK8sIoV1beta2>(map['requests'], (value) => DeviceRequestResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

