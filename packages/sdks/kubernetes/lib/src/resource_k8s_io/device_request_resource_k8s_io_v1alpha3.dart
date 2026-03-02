// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_selector_resource_k8s_io_v1alpha3.dart';

/// DeviceRequest is a request for devices required for a claim. This is typically a request for a single resource like a device, but can also ask for several identical devices.
///
/// A DeviceClassName is currently required. Clients must check that it is indeed set. It's absence indicates that something changed in a way that is not supported by the client yet, in which case it must refuse to handle the request.
class DeviceRequestResourceK8sIoV1alpha3 {
  /// AdminAccess indicates that this is a claim for administrative access to the device(s). Claims with AdminAccess are expected to be used for monitoring or other management services for a device.  They ignore all ordinary claims to the device with respect to access modes and any resource allocations.
  final pulumi.Input<bool>? adminAccess;
  /// AllocationMode and its related fields define how devices are allocated to satisfy this request. Supported values are:
  ///
  /// - ExactCount: This request is for a specific number of devices.
  /// This is the default. The exact number is provided in the
  /// count field.
  ///
  /// - All: This request is for all of the matching devices in a pool.
  /// Allocation will fail if some devices are already allocated,
  /// unless adminAccess is requested.
  ///
  /// If AlloctionMode is not specified, the default mode is ExactCount. If the mode is ExactCount and count is not specified, the default count is one. Any other requests must specify this field.
  ///
  /// More modes may get added in the future. Clients must refuse to handle requests with unknown modes.
  final pulumi.Input<String>? allocationMode;
  /// Count is used only when the count mode is "ExactCount". Must be greater than zero. If AllocationMode is ExactCount and this field is not specified, the default is one.
  final pulumi.Input<int>? count;
  /// DeviceClassName references a specific DeviceClass, which can define additional configuration and selectors to be inherited by this request.
  ///
  /// A class is required. Which classes are available depends on the cluster.
  ///
  /// Administrators may use this to restrict which devices may get requested by only installing classes with selectors for permitted devices. If users are free to request anything without restrictions, then administrators can create an empty DeviceClass for users to reference.
  final pulumi.Input<String> deviceClassName;
  /// Name can be used to reference this request in a pod.spec.containers[].resources.claims entry and in a constraint of the claim.
  ///
  /// Must be a DNS label.
  final pulumi.Input<String> name;
  /// Selectors define criteria which must be satisfied by a specific device in order for that device to be considered for this request. All selectors must be satisfied for a device to be considered.
  final pulumi.Input<List<DeviceSelectorResourceK8sIoV1alpha3>>? selectors;

  /// Creates a new [DeviceRequestResourceK8sIoV1alpha3].
  /// [adminAccess] AdminAccess indicates that this is a claim for administrative access to the device(s). Claims with AdminAccess are expected to be used for monitoring or other management services for a device.  They ignore all ordinary claims to the device with respect to access modes and any resource allocations.
  /// [allocationMode] AllocationMode and its related fields define how devices are allocated to satisfy this request. Supported values are:
  /// [count] Count is used only when the count mode is "ExactCount". Must be greater than zero. If AllocationMode is ExactCount and this field is not specified, the default is one.
  /// [deviceClassName] DeviceClassName references a specific DeviceClass, which can define additional configuration and selectors to be inherited by this request.
  /// [name] Name can be used to reference this request in a pod.spec.containers[].resources.claims entry and in a constraint of the claim.
  /// [selectors] Selectors define criteria which must be satisfied by a specific device in order for that device to be considered for this request. All selectors must be satisfied for a device to be considered.
  DeviceRequestResourceK8sIoV1alpha3({
    this.adminAccess,
    this.allocationMode,
    this.count,
    required this.deviceClassName,
    required this.name,
    this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminAccess': ?adminAccess,
      'allocationMode': ?allocationMode,
      'count': ?count,
      'deviceClassName': deviceClassName,
      'name': name,
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<DeviceSelectorResourceK8sIoV1alpha3>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<DeviceSelectorResourceK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceRequestResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceRequestResourceK8sIoV1alpha3(
      adminAccess: map['adminAccess'] == null ? null : (map['adminAccess']! as bool).input(),
      allocationMode: map['allocationMode'] == null ? null : (map['allocationMode']! as String).input(),
      count: map['count'] == null ? null : (map['count']! as int).input(),
      deviceClassName: (map['deviceClassName'] as String).input(),
      name: (map['name'] as String).input(),
      selectors: map['selectors'] == null ? null : (pulumi.Input.decodeList<DeviceSelectorResourceK8sIoV1alpha3>(map['selectors']!, (value) => DeviceSelectorResourceK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

