// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_requirements_patch_resource_k8s_io_v1beta2.dart';
import 'device_selector_patch_resource_k8s_io_v1beta2.dart';
import 'device_toleration_patch_resource_k8s_io_v1beta2.dart';

/// ExactDeviceRequest is a request for one or more identical devices.
class ExactDeviceRequestPatchResourceK8sIoV1beta2 {
  /// AdminAccess indicates that this is a claim for administrative access to the device(s). Claims with AdminAccess are expected to be used for monitoring or other management services for a device.  They ignore all ordinary claims to the device with respect to access modes and any resource allocations.
  ///
  /// This is an alpha field and requires enabling the DRAAdminAccess feature gate. Admin access is disabled if this field is unset or set to false, otherwise it is enabled.
  final pulumi.Input<bool>? adminAccess;
  /// AllocationMode and its related fields define how devices are allocated to satisfy this request. Supported values are:
  ///
  /// - ExactCount: This request is for a specific number of devices.
  /// This is the default. The exact number is provided in the
  /// count field.
  ///
  /// - All: This request is for all of the matching devices in a pool.
  /// At least one device must exist on the node for the allocation to succeed.
  /// Allocation will fail if some devices are already allocated,
  /// unless adminAccess is requested.
  ///
  /// If AllocationMode is not specified, the default mode is ExactCount. If the mode is ExactCount and count is not specified, the default count is one. Any other requests must specify this field.
  ///
  /// More modes may get added in the future. Clients must refuse to handle requests with unknown modes.
  final pulumi.Input<String>? allocationMode;
  /// Capacity define resource requirements against each capacity.
  ///
  /// If this field is unset and the device supports multiple allocations, the default value will be applied to each capacity according to requestPolicy. For the capacity that has no requestPolicy, default is the full capacity value.
  ///
  /// Applies to each device allocation. If Count > 1, the request fails if there aren't enough devices that meet the requirements. If AllocationMode is set to All, the request fails if there are devices that otherwise match the request, and have this capacity, with a value >= the requested amount, but which cannot be allocated to this request.
  final pulumi.Input<CapacityRequirementsPatchResourceK8sIoV1beta2>? capacity;
  /// Count is used only when the count mode is "ExactCount". Must be greater than zero. If AllocationMode is ExactCount and this field is not specified, the default is one.
  final pulumi.Input<int>? count;
  /// DeviceClassName references a specific DeviceClass, which can define additional configuration and selectors to be inherited by this request.
  ///
  /// A DeviceClassName is required.
  ///
  /// Administrators may use this to restrict which devices may get requested by only installing classes with selectors for permitted devices. If users are free to request anything without restrictions, then administrators can create an empty DeviceClass for users to reference.
  final pulumi.Input<String>? deviceClassName;
  /// Selectors define criteria which must be satisfied by a specific device in order for that device to be considered for this request. All selectors must be satisfied for a device to be considered.
  final pulumi.Input<List<DeviceSelectorPatchResourceK8sIoV1beta2>>? selectors;
  /// If specified, the request's tolerations.
  ///
  /// Tolerations for NoSchedule are required to allocate a device which has a taint with that effect. The same applies to NoExecute.
  ///
  /// In addition, should any of the allocated devices get tainted with NoExecute after allocation and that effect is not tolerated, then all pods consuming the ResourceClaim get deleted to evict them. The scheduler will not let new pods reserve the claim while it has these tainted devices. Once all pods are evicted, the claim will get deallocated.
  ///
  /// The maximum number of tolerations is 16.
  ///
  /// This is an alpha field and requires enabling the DRADeviceTaints feature gate.
  final pulumi.Input<List<DeviceTolerationPatchResourceK8sIoV1beta2>>? tolerations;

  /// Creates a new [ExactDeviceRequestPatchResourceK8sIoV1beta2].
  /// [adminAccess] AdminAccess indicates that this is a claim for administrative access to the device(s). Claims with AdminAccess are expected to be used for monitoring or other management services for a device.  They ignore all ordinary claims to the device with respect to access modes and any resource allocations.
  /// [allocationMode] AllocationMode and its related fields define how devices are allocated to satisfy this request. Supported values are:
  /// [capacity] Capacity define resource requirements against each capacity.
  /// [count] Count is used only when the count mode is "ExactCount". Must be greater than zero. If AllocationMode is ExactCount and this field is not specified, the default is one.
  /// [deviceClassName] DeviceClassName references a specific DeviceClass, which can define additional configuration and selectors to be inherited by this request.
  /// [selectors] Selectors define criteria which must be satisfied by a specific device in order for that device to be considered for this request. All selectors must be satisfied for a device to be considered.
  /// [tolerations] If specified, the request's tolerations.
  ExactDeviceRequestPatchResourceK8sIoV1beta2({
    this.adminAccess,
    this.allocationMode,
    this.capacity,
    this.count,
    this.deviceClassName,
    this.selectors,
    this.tolerations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminAccess': ?adminAccess,
      'allocationMode': ?allocationMode,
      'capacity': ?pulumi.Input.mapOptionalInputValue<CapacityRequirementsPatchResourceK8sIoV1beta2, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'count': ?count,
      'deviceClassName': ?deviceClassName,
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<DeviceSelectorPatchResourceK8sIoV1beta2>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<DeviceSelectorPatchResourceK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tolerations': ?pulumi.Input.mapOptionalInputValue<List<DeviceTolerationPatchResourceK8sIoV1beta2>, List<Map<String, dynamic>>>(tolerations, (value) => pulumi.Input.encodeList<DeviceTolerationPatchResourceK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExactDeviceRequestPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return ExactDeviceRequestPatchResourceK8sIoV1beta2(
      adminAccess: map['adminAccess'] == null ? null : (map['adminAccess'] as bool).input(),
      allocationMode: map['allocationMode'] == null ? null : (map['allocationMode'] as String).input(),
      capacity: map['capacity'] == null ? null : (CapacityRequirementsPatchResourceK8sIoV1beta2.fromMap((map['capacity'] as Map).cast<String, dynamic>())).input(),
      count: map['count'] == null ? null : (map['count'] as int).input(),
      deviceClassName: map['deviceClassName'] == null ? null : (map['deviceClassName'] as String).input(),
      selectors: map['selectors'] == null ? null : (pulumi.Input.decodeList<DeviceSelectorPatchResourceK8sIoV1beta2>(map['selectors'], (value) => DeviceSelectorPatchResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tolerations: map['tolerations'] == null ? null : (pulumi.Input.decodeList<DeviceTolerationPatchResourceK8sIoV1beta2>(map['tolerations'], (value) => DeviceTolerationPatchResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

