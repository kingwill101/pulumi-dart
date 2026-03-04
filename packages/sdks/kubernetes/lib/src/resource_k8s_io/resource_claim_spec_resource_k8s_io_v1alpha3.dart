// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_claim_resource_k8s_io_v1alpha3.dart';

/// ResourceClaimSpec defines what is being requested in a ResourceClaim and how to configure it.
class ResourceClaimSpecResourceK8sIoV1alpha3 {
  /// Controller is the name of the DRA driver that is meant to handle allocation of this claim. If empty, allocation is handled by the scheduler while scheduling a pod.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver.
  ///
  /// This is an alpha field and requires enabling the DRAControlPlaneController feature gate.
  final pulumi.Input<String>? controller;

  /// Devices defines how to request devices.
  final pulumi.Input<DeviceClaimResourceK8sIoV1alpha3>? devices;

  /// Creates a new [ResourceClaimSpecResourceK8sIoV1alpha3].
  /// [controller] Controller is the name of the DRA driver that is meant to handle allocation of this claim. If empty, allocation is handled by the scheduler while scheduling a pod.
  /// [devices] Devices defines how to request devices.
  ResourceClaimSpecResourceK8sIoV1alpha3({this.controller, this.devices});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controller': ?controller,
      'devices':
          ?pulumi.Input.mapOptionalInputValue<
            DeviceClaimResourceK8sIoV1alpha3,
            Map<String, dynamic>
          >(devices, (value) => value.toMap()),
    };
  }

  factory ResourceClaimSpecResourceK8sIoV1alpha3.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceClaimSpecResourceK8sIoV1alpha3(
      controller: (() {
        final guardedValue = map['controller'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      devices: (() {
        final guardedValue = map['devices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeviceClaimResourceK8sIoV1alpha3.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
