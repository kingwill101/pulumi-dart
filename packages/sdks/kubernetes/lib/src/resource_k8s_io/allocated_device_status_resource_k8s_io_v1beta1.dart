// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';
import 'network_device_data_resource_k8s_io_v1beta1.dart';

/// AllocatedDeviceStatus contains the status of an allocated device, if the driver chooses to report it. This may include driver-specific information.
///
/// The combination of Driver, Pool, Device, and ShareID must match the corresponding key in Status.Allocation.Devices.
class AllocatedDeviceStatusResourceK8sIoV1beta1 {
  /// Conditions contains the latest observation of the device's state. If the device has been configured according to the class and claim config references, the `Ready` condition should be True.
  ///
  /// Must not contain more than 8 entries.
  final List<Condition>? conditions;
  /// Data contains arbitrary driver-specific data.
  ///
  /// The length of the raw data must be smaller or equal to 10 Ki.
  final dynamic data;
  /// Device references one device instance via its name in the driver's resource pool. It must be a DNS label.
  final String device;
  /// Driver specifies the name of the DRA driver whose kubelet plugin should be invoked to process the allocation once the claim is needed on a node.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver. It should use only lower case characters.
  final String driver;
  /// NetworkData contains network-related information specific to the device.
  final NetworkDeviceDataResourceK8sIoV1beta1? networkData;
  /// This name together with the driver name and the device name field identify which device was allocated (`<driver name>/<pool name>/<device name>`).
  ///
  /// Must not be longer than 253 characters and may contain one or more DNS sub-domains separated by slashes.
  final String pool;
  /// ShareID uniquely identifies an individual allocation share of the device.
  final String? shareID;

  /// Creates a new [AllocatedDeviceStatusResourceK8sIoV1beta1].
  /// [conditions] Conditions contains the latest observation of the device's state. If the device has been configured according to the class and claim config references, the `Ready` condition should be True.
  /// [data] Data contains arbitrary driver-specific data.
  /// [device] Device references one device instance via its name in the driver's resource pool. It must be a DNS label.
  /// [driver] Driver specifies the name of the DRA driver whose kubelet plugin should be invoked to process the allocation once the claim is needed on a node.
  /// [networkData] NetworkData contains network-related information specific to the device.
  /// [pool] This name together with the driver name and the device name field identify which device was allocated (`<driver name>/<pool name>/<device name>`).
  /// [shareID] ShareID uniquely identifies an individual allocation share of the device.
  AllocatedDeviceStatusResourceK8sIoV1beta1({
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
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<Condition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'data': ?data,
      'device': device,
      'driver': driver,
      'networkData': ?networkData == null ? null : networkData!.toMap(),
      'pool': pool,
      'shareID': ?shareID,
    };
  }

  factory AllocatedDeviceStatusResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return AllocatedDeviceStatusResourceK8sIoV1beta1(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<Condition>(map['conditions'], (value) => Condition.fromMap((value as Map).cast<String, dynamic>())),
      data: map['data'] == null ? null : map['data'],
      device: map['device'] as String,
      driver: map['driver'] as String,
      networkData: map['networkData'] == null ? null : NetworkDeviceDataResourceK8sIoV1beta1.fromMap((map['networkData'] as Map).cast<String, dynamic>()),
      pool: map['pool'] as String,
      shareID: map['shareID'] == null ? null : map['shareID'] as String,
    );
  }
}

