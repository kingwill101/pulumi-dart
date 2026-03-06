// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DeviceRequestAllocationResult contains the allocation result for one request.
class DeviceRequestAllocationResultResourceK8sIoV1alpha3 {
  /// Device references one device instance via its name in the driver's resource pool. It must be a DNS label.
  final pulumi.Input<String> device;
  /// Driver specifies the name of the DRA driver whose kubelet plugin should be invoked to process the allocation once the claim is needed on a node.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver.
  final pulumi.Input<String> driver;
  /// This name together with the driver name and the device name field identify which device was allocated (`&lt;driver name&gt;/&lt;pool name&gt;/&lt;device name&gt;`).
  ///
  /// Must not be longer than 253 characters and may contain one or more DNS sub-domains separated by slashes.
  final pulumi.Input<String> pool;
  /// Request is the name of the request in the claim which caused this device to be allocated. Multiple devices may have been allocated per request.
  final pulumi.Input<String> request;

  /// Creates a new [DeviceRequestAllocationResultResourceK8sIoV1alpha3].
  /// [device] Device references one device instance via its name in the driver's resource pool. It must be a DNS label.
  /// [driver] Driver specifies the name of the DRA driver whose kubelet plugin should be invoked to process the allocation once the claim is needed on a node.
  /// [pool] This name together with the driver name and the device name field identify which device was allocated (`&lt;driver name&gt;/&lt;pool name&gt;/&lt;device name&gt;`).
  /// [request] Request is the name of the request in the claim which caused this device to be allocated. Multiple devices may have been allocated per request.
  const DeviceRequestAllocationResultResourceK8sIoV1alpha3({
    required this.device,
    required this.driver,
    required this.pool,
    required this.request,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': device,
      'driver': driver,
      'pool': pool,
      'request': request,
    };
  }

  factory DeviceRequestAllocationResultResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceRequestAllocationResultResourceK8sIoV1alpha3(
      device: pulumi.Input.fromValue(map['device'] as String),
      driver: pulumi.Input.fromValue(map['driver'] as String),
      pool: pulumi.Input.fromValue(map['pool'] as String),
      request: pulumi.Input.fromValue(map['request'] as String),
    );
  }
}

