// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_claim_resource_k8s_io_v1beta1.dart';

/// ResourceClaimSpec defines what is being requested in a ResourceClaim and how to configure it.
class ResourceClaimSpecResourceK8sIoV1beta1 {
  /// Devices defines how to request devices.
  final pulumi.Input<DeviceClaimResourceK8sIoV1beta1>? devices;

  /// Creates a new [ResourceClaimSpecResourceK8sIoV1beta1].
  /// [devices] Devices defines how to request devices.
  ResourceClaimSpecResourceK8sIoV1beta1({
    this.devices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devices': ?pulumi.Input.mapOptionalInputValue<DeviceClaimResourceK8sIoV1beta1, Map<String, dynamic>>(devices, (value) => value.toMap()),
    };
  }

  factory ResourceClaimSpecResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ResourceClaimSpecResourceK8sIoV1beta1(
      devices: map['devices'] == null ? null : (DeviceClaimResourceK8sIoV1beta1.fromMap((map['devices'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

