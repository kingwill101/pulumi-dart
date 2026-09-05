// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';
import 'network_device_data.dart';

/// AllocatedDeviceStatus contains the status of an allocated device, if the driver chooses to report it. This may include driver-specific information.
///
/// The combination of Driver, Pool, Device, and ShareID must match the corresponding key in Status.Allocation.Devices.
class AllocatedDeviceStatus {
  /// Conditions contains the latest observation of the device's state. If the device has been configured according to the class and claim config references, the `Ready` condition should be True.
  ///
  /// Must not contain more than 8 entries.
  final pulumi.Input<List<Condition>?>? conditions;
  /// Data contains arbitrary driver-specific data.
  ///
  /// The length of the raw data must be smaller or equal to 10 Ki.
  final pulumi.Input<dynamic>? data;
  /// Device references one device instance via its name in the driver's resource pool. It must be a DNS label.
  final pulumi.Input<String> device;
  /// Driver specifies the name of the DRA driver whose kubelet plugin should be invoked to process the allocation once the claim is needed on a node.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver. It should use only lower case characters.
  final pulumi.Input<String> driver;
  /// NetworkData contains network-related information specific to the device.
  final pulumi.Input<NetworkDeviceData?>? networkData;
  /// This name together with the driver name and the device name field identify which device was allocated (`&lt;driver name&gt;/&lt;pool name&gt;/&lt;device name&gt;`).
  ///
  /// Must not be longer than 253 characters and may contain one or more DNS sub-domains separated by slashes.
  final pulumi.Input<String> pool;
  /// ShareID uniquely identifies an individual allocation share of the device.
  final pulumi.Input<String?>? shareID;

  /// Creates a new [AllocatedDeviceStatus].
  /// [conditions] Conditions contains the latest observation of the device's state. If the device has been configured according to the class and claim config references, the `Ready` condition should be True.
  /// [data] Data contains arbitrary driver-specific data.
  /// [device] Device references one device instance via its name in the driver's resource pool. It must be a DNS label.
  /// [driver] Driver specifies the name of the DRA driver whose kubelet plugin should be invoked to process the allocation once the claim is needed on a node.
  /// [networkData] NetworkData contains network-related information specific to the device.
  /// [pool] This name together with the driver name and the device name field identify which device was allocated (`&lt;driver name&gt;/&lt;pool name&gt;/&lt;device name&gt;`).
  /// [shareID] ShareID uniquely identifies an individual allocation share of the device.
  const AllocatedDeviceStatus({
    this.conditions,
    this.data,
    required this.device,
    required this.driver,
    this.networkData,
    required this.pool,
    this.shareID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'data': ?data,
      'device': device,
      'driver': driver,
      'networkData': ?pulumi.Input.mapOptionalInputValue<NetworkDeviceData, Map<String, dynamic>>(networkData, (value) => value.toMap()),
      'pool': pool,
      'shareID': ?shareID,
    };
  }

  factory AllocatedDeviceStatus.fromMap(Map<String, dynamic> map) {
    return AllocatedDeviceStatus(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Condition>(guardedValue, (value) => Condition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      device: pulumi.Input.fromValue(map['device'] as String),
      driver: pulumi.Input.fromValue(map['driver'] as String),
      networkData: (() { final guardedValue = map['networkData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkDeviceData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pool: pulumi.Input.fromValue(map['pool'] as String),
      shareID: (() { final guardedValue = map['shareID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
