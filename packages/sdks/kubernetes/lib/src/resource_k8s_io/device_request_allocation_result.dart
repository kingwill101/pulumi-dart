// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_toleration.dart';

/// DeviceRequestAllocationResult contains the allocation result for one request.
class DeviceRequestAllocationResult {
  /// AdminAccess indicates that this device was allocated for administrative access. See the corresponding request field for a definition of mode.
  ///
  /// Admin access is disabled if this field is unset or set to false, otherwise it is enabled.
  final pulumi.Input<bool?>? adminAccess;
  /// BindingConditions contains a copy of the BindingConditions from the corresponding ResourceSlice at the time of allocation.
  ///
  /// This is a beta field and requires enabling the DRADeviceBindingConditions and DRAResourceClaimDeviceStatus feature gates.
  final pulumi.Input<List<String>?>? bindingConditions;
  /// BindingFailureConditions contains a copy of the BindingFailureConditions from the corresponding ResourceSlice at the time of allocation.
  ///
  /// This is a beta field and requires enabling the DRADeviceBindingConditions and DRAResourceClaimDeviceStatus feature gates.
  final pulumi.Input<List<String>?>? bindingFailureConditions;
  /// ConsumedCapacity tracks the amount of capacity consumed per device as part of the claim request. The consumed amount may differ from the requested amount: it is rounded up to the nearest valid value based on the device’s requestPolicy if applicable (i.e., may not be less than the requested amount).
  ///
  /// The total consumed capacity for each device must not exceed the DeviceCapacity's Value.
  ///
  /// This field is populated only for devices that allow multiple allocations. All capacity entries are included, even if the consumed amount is zero.
  final pulumi.Input<Map<String, String>?>? consumedCapacity;
  /// Device references one device instance via its name in the driver's resource pool. It must be a DNS label.
  final pulumi.Input<String> device;
  /// Driver specifies the name of the DRA driver whose kubelet plugin should be invoked to process the allocation once the claim is needed on a node.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver. It should use only lower case characters.
  final pulumi.Input<String> driver;
  /// This name together with the driver name and the device name field identify which device was allocated (`&lt;driver name&gt;/&lt;pool name&gt;/&lt;device name&gt;`).
  ///
  /// Must not be longer than 253 characters and may contain one or more DNS sub-domains separated by slashes.
  final pulumi.Input<String> pool;
  /// Request is the name of the request in the claim which caused this device to be allocated. If it references a subrequest in the firstAvailable list on a DeviceRequest, this field must include both the name of the main request and the subrequest using the format &lt;main request&gt;/&lt;subrequest&gt;.
  ///
  /// Multiple devices may have been allocated per request.
  final pulumi.Input<String> request;
  /// ShareID uniquely identifies an individual allocation share of the device, used when the device supports multiple simultaneous allocations. It serves as an additional map key to differentiate concurrent shares of the same device.
  final pulumi.Input<String?>? shareID;
  /// SkipNodeOperations lists node-local resource operations (gRPC calls) that will be skipped for this allocated device when determining whether operations are necessary on the node. If all allocated devices for a driver in a claim skip an operation, that gRPC call will be skipped. It is a copy of the ResourceSlice.spec.skipNodeOperations value at the time when the device was allocated.
  final pulumi.Input<List<String>?>? skipNodeOperations;
  /// A copy of all tolerations specified in the request at the time when the device got allocated.
  ///
  /// The maximum number of tolerations is 16.
  ///
  /// This is a beta field and requires enabling the DRADeviceTaints feature gate.
  final pulumi.Input<List<DeviceToleration>?>? tolerations;

  /// Creates a new [DeviceRequestAllocationResult].
  /// [adminAccess] AdminAccess indicates that this device was allocated for administrative access. See the corresponding request field for a definition of mode.
  /// [bindingConditions] BindingConditions contains a copy of the BindingConditions from the corresponding ResourceSlice at the time of allocation.
  /// [bindingFailureConditions] BindingFailureConditions contains a copy of the BindingFailureConditions from the corresponding ResourceSlice at the time of allocation.
  /// [consumedCapacity] ConsumedCapacity tracks the amount of capacity consumed per device as part of the claim request. The consumed amount may differ from the requested amount: it is rounded up to the nearest valid value based on the device’s requestPolicy if applicable (i.e., may not be less than the requested amount).
  /// [device] Device references one device instance via its name in the driver's resource pool. It must be a DNS label.
  /// [driver] Driver specifies the name of the DRA driver whose kubelet plugin should be invoked to process the allocation once the claim is needed on a node.
  /// [pool] This name together with the driver name and the device name field identify which device was allocated (`&lt;driver name&gt;/&lt;pool name&gt;/&lt;device name&gt;`).
  /// [request] Request is the name of the request in the claim which caused this device to be allocated. If it references a subrequest in the firstAvailable list on a DeviceRequest, this field must include both the name of the main request and the subrequest using the format &lt;main request&gt;/&lt;subrequest&gt;.
  /// [shareID] ShareID uniquely identifies an individual allocation share of the device, used when the device supports multiple simultaneous allocations. It serves as an additional map key to differentiate concurrent shares of the same device.
  /// [skipNodeOperations] SkipNodeOperations lists node-local resource operations (gRPC calls) that will be skipped for this allocated device when determining whether operations are necessary on the node. If all allocated devices for a driver in a claim skip an operation, that gRPC call will be skipped. It is a copy of the ResourceSlice.spec.skipNodeOperations value at the time when the device was allocated.
  /// [tolerations] A copy of all tolerations specified in the request at the time when the device got allocated.
  const DeviceRequestAllocationResult({
    this.adminAccess,
    this.bindingConditions,
    this.bindingFailureConditions,
    this.consumedCapacity,
    required this.device,
    required this.driver,
    required this.pool,
    required this.request,
    this.shareID,
    this.skipNodeOperations,
    this.tolerations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminAccess': ?adminAccess,
      'bindingConditions': ?bindingConditions,
      'bindingFailureConditions': ?bindingFailureConditions,
      'consumedCapacity': ?consumedCapacity,
      'device': device,
      'driver': driver,
      'pool': pool,
      'request': request,
      'shareID': ?shareID,
      'skipNodeOperations': ?skipNodeOperations,
      'tolerations': ?pulumi.Input.mapOptionalInputValue<List<DeviceToleration>, List<Map<String, dynamic>>>(tolerations, (value) => pulumi.Input.encodeList<DeviceToleration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceRequestAllocationResult.fromMap(Map<String, dynamic> map) {
    return DeviceRequestAllocationResult(
      adminAccess: (() { final guardedValue = map['adminAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bindingConditions: (() { final guardedValue = map['bindingConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bindingFailureConditions: (() { final guardedValue = map['bindingFailureConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      consumedCapacity: (() { final guardedValue = map['consumedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      device: pulumi.Input.fromValue(map['device'] as String),
      driver: pulumi.Input.fromValue(map['driver'] as String),
      pool: pulumi.Input.fromValue(map['pool'] as String),
      request: pulumi.Input.fromValue(map['request'] as String),
      shareID: (() { final guardedValue = map['shareID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipNodeOperations: (() { final guardedValue = map['skipNodeOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tolerations: (() { final guardedValue = map['tolerations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceToleration>(guardedValue, (value) => DeviceToleration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
