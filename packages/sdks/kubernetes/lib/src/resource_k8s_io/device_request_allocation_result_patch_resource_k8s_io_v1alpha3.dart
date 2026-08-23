// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DeviceRequestAllocationResult contains the allocation result for one request.
class DeviceRequestAllocationResultPatchResourceK8sIoV1alpha3 {
  /// Device references one device instance via its name in the driver's resource pool. It must be a DNS label.
  final pulumi.Input<String>? device;
  /// Driver specifies the name of the DRA driver whose kubelet plugin should be invoked to process the allocation once the claim is needed on a node.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver.
  final pulumi.Input<String>? driver;
  /// This name together with the driver name and the device name field identify which device was allocated (`&lt;driver name&gt;/&lt;pool name&gt;/&lt;device name&gt;`).
  ///
  /// Must not be longer than 253 characters and may contain one or more DNS sub-domains separated by slashes.
  final pulumi.Input<String>? pool;
  /// Request is the name of the request in the claim which caused this device to be allocated. Multiple devices may have been allocated per request.
  final pulumi.Input<String>? request;

  /// Creates a new [DeviceRequestAllocationResultPatchResourceK8sIoV1alpha3].
  /// [device] Device references one device instance via its name in the driver's resource pool. It must be a DNS label.
  /// [driver] Driver specifies the name of the DRA driver whose kubelet plugin should be invoked to process the allocation once the claim is needed on a node.
  /// [pool] This name together with the driver name and the device name field identify which device was allocated (`&lt;driver name&gt;/&lt;pool name&gt;/&lt;device name&gt;`).
  /// [request] Request is the name of the request in the claim which caused this device to be allocated. Multiple devices may have been allocated per request.
  const DeviceRequestAllocationResultPatchResourceK8sIoV1alpha3({
    this.device,
    this.driver,
    this.pool,
    this.request,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': ?device,
      'driver': ?driver,
      'pool': ?pool,
      'request': ?request,
    };
  }

  factory DeviceRequestAllocationResultPatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceRequestAllocationResultPatchResourceK8sIoV1alpha3(
      device: (() { final guardedValue = map['device']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pool: (() { final guardedValue = map['pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
