// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_claim_patch_resource_k8s_io_v1beta2.dart';

/// ResourceClaimSpec defines what is being requested in a ResourceClaim and how to configure it.
class ResourceClaimSpecPatchResourceK8sIoV1beta2 {
  /// Devices defines how to request devices.
  final pulumi.Input<DeviceClaimPatchResourceK8sIoV1beta2?>? devices;

  /// Creates a new [ResourceClaimSpecPatchResourceK8sIoV1beta2].
  /// [devices] Devices defines how to request devices.
  const ResourceClaimSpecPatchResourceK8sIoV1beta2({
    this.devices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devices': ?pulumi.Input.mapOptionalInputValue<DeviceClaimPatchResourceK8sIoV1beta2, Map<String, dynamic>>(devices, (value) => value.toMap()),
    };
  }

  factory ResourceClaimSpecPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return ResourceClaimSpecPatchResourceK8sIoV1beta2(
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceClaimPatchResourceK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
