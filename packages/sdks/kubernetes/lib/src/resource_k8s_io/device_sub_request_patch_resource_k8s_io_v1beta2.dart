// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_requirements_patch_resource_k8s_io_v1beta2.dart';
import 'device_derived_attribute_patch_resource_k8s_io_v1beta2.dart';
import 'device_selector_patch_resource_k8s_io_v1beta2.dart';
import 'device_toleration_patch_resource_k8s_io_v1beta2.dart';

/// DeviceSubRequest describes a request for device provided in the claim.spec.devices.requests[].firstAvailable array. Each is typically a request for a single resource like a device, but can also ask for several identical devices.
///
/// DeviceSubRequest is similar to ExactDeviceRequest, but doesn't expose the AdminAccess field as that one is only supported when requesting a specific device.
class DeviceSubRequestPatchResourceK8sIoV1beta2 {
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
  final pulumi.Input<String?>? allocationMode;
  /// Capacity define resource requirements against each capacity.
  ///
  /// If this field is unset and the device supports multiple allocations, the default value will be applied to each capacity according to requestPolicy. For the capacity that has no requestPolicy, default is the full capacity value.
  ///
  /// Applies to each device allocation. If Count &gt; 1, the request fails if there aren't enough devices that meet the requirements. If AllocationMode is set to All, the request fails if there are devices that otherwise match the request, and have this capacity, with a value &gt;= the requested amount, but which cannot be allocated to this request.
  final pulumi.Input<CapacityRequirementsPatchResourceK8sIoV1beta2?>? capacity;
  /// Count is used only when the count mode is "ExactCount". Must be greater than zero. If AllocationMode is ExactCount and this field is not specified, the default is one.
  final pulumi.Input<int?>? count;
  /// DerivedAttributes defines a set of virtual attributes computed via CEL expressions for each candidate device. These virtual attributes can be referenced in `.devices.constraints` to align and match different devices (e.g., co-allocating a GPU and a NIC on the same NUMA node) even if their drivers publish different attributes. Derived attributes are not available via `device.attributes` in the CEL environment when evaluating selector expressions.
  ///
  /// Derived attributes allow you to extract, transform, or normalize topology information (such as extracting a NUMA index from a complex topology string or renaming a vendor-specific attribute) into a common virtual attribute name at scheduling time. The scheduler then evaluates these virtual attributes exactly like static attributes when matching constraints.
  ///
  /// Every derived attribute defined in this list must be referenced by at least one MatchAttribute or DistinctAttribute constraint in the `.devices.constraints` list.
  ///
  /// The maximum number of derived attributes is 32.
  ///
  /// This is an alpha field and requires enabling the DRADerivedAttributes feature gate.
  final pulumi.Input<List<DeviceDerivedAttributePatchResourceK8sIoV1beta2>?>? derivedAttributes;
  /// DeviceClassName references a specific DeviceClass, which can define additional configuration and selectors to be inherited by this subrequest.
  ///
  /// A class is required. Which classes are available depends on the cluster.
  ///
  /// Administrators may use this to restrict which devices may get requested by only installing classes with selectors for permitted devices. If users are free to request anything without restrictions, then administrators can create an empty DeviceClass for users to reference.
  final pulumi.Input<String?>? deviceClassName;
  /// Name can be used to reference this subrequest in the list of constraints or the list of configurations for the claim. References must use the format &lt;main request&gt;/&lt;subrequest&gt;.
  ///
  /// Must be a DNS label.
  final pulumi.Input<String?>? name;
  /// Selectors define criteria which must be satisfied by a specific device in order for that device to be considered for this subrequest. All selectors must be satisfied for a device to be considered.
  final pulumi.Input<List<DeviceSelectorPatchResourceK8sIoV1beta2>?>? selectors;
  /// If specified, the request's tolerations.
  ///
  /// Tolerations for NoSchedule are required to allocate a device which has a taint with that effect. The same applies to NoExecute.
  ///
  /// In addition, should any of the allocated devices get tainted with NoExecute after allocation and that effect is not tolerated, then all pods consuming the ResourceClaim get deleted to evict them. The scheduler will not let new pods reserve the claim while it has these tainted devices. Once all pods are evicted, the claim will get deallocated.
  ///
  /// The maximum number of tolerations is 16.
  ///
  /// This is a beta field and requires enabling the DRADeviceTaints feature gate.
  final pulumi.Input<List<DeviceTolerationPatchResourceK8sIoV1beta2>?>? tolerations;

  /// Creates a new [DeviceSubRequestPatchResourceK8sIoV1beta2].
  /// [allocationMode] AllocationMode and its related fields define how devices are allocated to satisfy this subrequest. Supported values are:
  /// [capacity] Capacity define resource requirements against each capacity.
  /// [count] Count is used only when the count mode is "ExactCount". Must be greater than zero. If AllocationMode is ExactCount and this field is not specified, the default is one.
  /// [derivedAttributes] DerivedAttributes defines a set of virtual attributes computed via CEL expressions for each candidate device. These virtual attributes can be referenced in `.devices.constraints` to align and match different devices (e.g., co-allocating a GPU and a NIC on the same NUMA node) even if their drivers publish different attributes. Derived attributes are not available via `device.attributes` in the CEL environment when evaluating selector expressions.
  /// [deviceClassName] DeviceClassName references a specific DeviceClass, which can define additional configuration and selectors to be inherited by this subrequest.
  /// [name] Name can be used to reference this subrequest in the list of constraints or the list of configurations for the claim. References must use the format &lt;main request&gt;/&lt;subrequest&gt;.
  /// [selectors] Selectors define criteria which must be satisfied by a specific device in order for that device to be considered for this subrequest. All selectors must be satisfied for a device to be considered.
  /// [tolerations] If specified, the request's tolerations.
  const DeviceSubRequestPatchResourceK8sIoV1beta2({
    this.allocationMode,
    this.capacity,
    this.count,
    this.derivedAttributes,
    this.deviceClassName,
    this.name,
    this.selectors,
    this.tolerations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMode': ?allocationMode,
      'capacity': ?pulumi.Input.mapOptionalInputValue<CapacityRequirementsPatchResourceK8sIoV1beta2, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'count': ?count,
      'derivedAttributes': ?pulumi.Input.mapOptionalInputValue<List<DeviceDerivedAttributePatchResourceK8sIoV1beta2>, List<Map<String, dynamic>>>(derivedAttributes, (value) => pulumi.Input.encodeList<DeviceDerivedAttributePatchResourceK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviceClassName': ?deviceClassName,
      'name': ?name,
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<DeviceSelectorPatchResourceK8sIoV1beta2>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<DeviceSelectorPatchResourceK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tolerations': ?pulumi.Input.mapOptionalInputValue<List<DeviceTolerationPatchResourceK8sIoV1beta2>, List<Map<String, dynamic>>>(tolerations, (value) => pulumi.Input.encodeList<DeviceTolerationPatchResourceK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceSubRequestPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceSubRequestPatchResourceK8sIoV1beta2(
      allocationMode: (() { final guardedValue = map['allocationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityRequirementsPatchResourceK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      derivedAttributes: (() { final guardedValue = map['derivedAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceDerivedAttributePatchResourceK8sIoV1beta2>(guardedValue, (value) => DeviceDerivedAttributePatchResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deviceClassName: (() { final guardedValue = map['deviceClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectors: (() { final guardedValue = map['selectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceSelectorPatchResourceK8sIoV1beta2>(guardedValue, (value) => DeviceSelectorPatchResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tolerations: (() { final guardedValue = map['tolerations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceTolerationPatchResourceK8sIoV1beta2>(guardedValue, (value) => DeviceTolerationPatchResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
