// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_requirements_patch_resource_k8s_io_v1beta1.dart';
import 'device_selector_patch_resource_k8s_io_v1beta1.dart';
import 'device_toleration_patch_resource_k8s_io_v1beta1.dart';

/// DeviceSubRequest describes a request for device provided in the claim.spec.devices.requests[].firstAvailable array. Each is typically a request for a single resource like a device, but can also ask for several identical devices.
///
/// DeviceSubRequest is similar to Request, but doesn't expose the AdminAccess or FirstAvailable fields, as those can only be set on the top-level request. AdminAccess is not supported for requests with a prioritized list, and recursive FirstAvailable fields are not supported.
class DeviceSubRequestPatchResourceK8sIoV1beta1 {
  /// AllocationMode and its related fields define how devices are allocated to satisfy this subrequest. Supported values are:
  ///
  /// - ExactCount: This request is for a specific number of devices.
  /// This is the default. The exact number is provided in the
  /// count field.
  ///
  /// - All: This subrequest is for all of the matching devices in a pool.
  /// Allocation will fail if some devices are already allocated,
  /// unless adminAccess is requested.
  ///
  /// If AllocationMode is not specified, the default mode is ExactCount. If the mode is ExactCount and count is not specified, the default count is one. Any other subrequests must specify this field.
  ///
  /// More modes may get added in the future. Clients must refuse to handle requests with unknown modes.
  final String? allocationMode;
  /// Capacity define resource requirements against each capacity.
  ///
  /// If this field is unset and the device supports multiple allocations, the default value will be applied to each capacity according to requestPolicy. For the capacity that has no requestPolicy, default is the full capacity value.
  ///
  /// Applies to each device allocation. If Count > 1, the request fails if there aren't enough devices that meet the requirements. If AllocationMode is set to All, the request fails if there are devices that otherwise match the request, and have this capacity, with a value >= the requested amount, but which cannot be allocated to this request.
  final CapacityRequirementsPatchResourceK8sIoV1beta1? capacity;
  /// Count is used only when the count mode is "ExactCount". Must be greater than zero. If AllocationMode is ExactCount and this field is not specified, the default is one.
  final int? count;
  /// DeviceClassName references a specific DeviceClass, which can define additional configuration and selectors to be inherited by this subrequest.
  ///
  /// A class is required. Which classes are available depends on the cluster.
  ///
  /// Administrators may use this to restrict which devices may get requested by only installing classes with selectors for permitted devices. If users are free to request anything without restrictions, then administrators can create an empty DeviceClass for users to reference.
  final String? deviceClassName;
  /// Name can be used to reference this subrequest in the list of constraints or the list of configurations for the claim. References must use the format <main request>/<subrequest>.
  ///
  /// Must be a DNS label.
  final String? name;
  /// Selectors define criteria which must be satisfied by a specific device in order for that device to be considered for this subrequest. All selectors must be satisfied for a device to be considered.
  final List<DeviceSelectorPatchResourceK8sIoV1beta1>? selectors;
  /// If specified, the request's tolerations.
  ///
  /// Tolerations for NoSchedule are required to allocate a device which has a taint with that effect. The same applies to NoExecute.
  ///
  /// In addition, should any of the allocated devices get tainted with NoExecute after allocation and that effect is not tolerated, then all pods consuming the ResourceClaim get deleted to evict them. The scheduler will not let new pods reserve the claim while it has these tainted devices. Once all pods are evicted, the claim will get deallocated.
  ///
  /// The maximum number of tolerations is 16.
  ///
  /// This is an alpha field and requires enabling the DRADeviceTaints feature gate.
  final List<DeviceTolerationPatchResourceK8sIoV1beta1>? tolerations;

  /// Creates a new [DeviceSubRequestPatchResourceK8sIoV1beta1].
  /// [allocationMode] AllocationMode and its related fields define how devices are allocated to satisfy this subrequest. Supported values are:
  /// [capacity] Capacity define resource requirements against each capacity.
  /// [count] Count is used only when the count mode is "ExactCount". Must be greater than zero. If AllocationMode is ExactCount and this field is not specified, the default is one.
  /// [deviceClassName] DeviceClassName references a specific DeviceClass, which can define additional configuration and selectors to be inherited by this subrequest.
  /// [name] Name can be used to reference this subrequest in the list of constraints or the list of configurations for the claim. References must use the format <main request>/<subrequest>.
  /// [selectors] Selectors define criteria which must be satisfied by a specific device in order for that device to be considered for this subrequest. All selectors must be satisfied for a device to be considered.
  /// [tolerations] If specified, the request's tolerations.
  DeviceSubRequestPatchResourceK8sIoV1beta1({
    this.allocationMode,
    this.capacity,
    this.count,
    this.deviceClassName,
    this.name,
    this.selectors,
    this.tolerations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMode': ?allocationMode,
      'capacity': ?capacity == null ? null : capacity!.toMap(),
      'count': ?count,
      'deviceClassName': ?deviceClassName,
      'name': ?name,
      'selectors': ?selectors == null ? null : pulumi.Input.encodeList<DeviceSelectorPatchResourceK8sIoV1beta1, Map<String, dynamic>>(selectors!, (value) => value.toMap()),
      'tolerations': ?tolerations == null ? null : pulumi.Input.encodeList<DeviceTolerationPatchResourceK8sIoV1beta1, Map<String, dynamic>>(tolerations!, (value) => value.toMap()),
    };
  }

  factory DeviceSubRequestPatchResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DeviceSubRequestPatchResourceK8sIoV1beta1(
      allocationMode: map['allocationMode'] == null ? null : map['allocationMode'] as String,
      capacity: map['capacity'] == null ? null : CapacityRequirementsPatchResourceK8sIoV1beta1.fromMap((map['capacity'] as Map).cast<String, dynamic>()),
      count: map['count'] == null ? null : map['count'] as int,
      deviceClassName: map['deviceClassName'] == null ? null : map['deviceClassName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      selectors: map['selectors'] == null ? null : pulumi.Input.decodeList<DeviceSelectorPatchResourceK8sIoV1beta1>(map['selectors'], (value) => DeviceSelectorPatchResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      tolerations: map['tolerations'] == null ? null : pulumi.Input.decodeList<DeviceTolerationPatchResourceK8sIoV1beta1>(map['tolerations'], (value) => DeviceTolerationPatchResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

