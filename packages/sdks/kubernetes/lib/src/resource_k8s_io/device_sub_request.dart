// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_requirements.dart';
import 'device_selector.dart';
import 'device_toleration.dart';

/// DeviceSubRequest describes a request for device provided in the claim.spec.devices.requests[].firstAvailable array. Each is typically a request for a single resource like a device, but can also ask for several identical devices.
///
/// DeviceSubRequest is similar to ExactDeviceRequest, but doesn't expose the AdminAccess field as that one is only supported when requesting a specific device.
class DeviceSubRequest {
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
  final pulumi.Input<String>? allocationMode;

  /// Capacity define resource requirements against each capacity.
  ///
  /// If this field is unset and the device supports multiple allocations, the default value will be applied to each capacity according to requestPolicy. For the capacity that has no requestPolicy, default is the full capacity value.
  ///
  /// Applies to each device allocation. If Count &gt; 1, the request fails if there aren't enough devices that meet the requirements. If AllocationMode is set to All, the request fails if there are devices that otherwise match the request, and have this capacity, with a value &gt;= the requested amount, but which cannot be allocated to this request.
  final pulumi.Input<CapacityRequirements>? capacity;

  /// Count is used only when the count mode is "ExactCount". Must be greater than zero. If AllocationMode is ExactCount and this field is not specified, the default is one.
  final pulumi.Input<int>? count;

  /// DeviceClassName references a specific DeviceClass, which can define additional configuration and selectors to be inherited by this subrequest.
  ///
  /// A class is required. Which classes are available depends on the cluster.
  ///
  /// Administrators may use this to restrict which devices may get requested by only installing classes with selectors for permitted devices. If users are free to request anything without restrictions, then administrators can create an empty DeviceClass for users to reference.
  final pulumi.Input<String> deviceClassName;

  /// Name can be used to reference this subrequest in the list of constraints or the list of configurations for the claim. References must use the format &lt;main request&gt;/&lt;subrequest&gt;.
  ///
  /// Must be a DNS label.
  final pulumi.Input<String> name;

  /// Selectors define criteria which must be satisfied by a specific device in order for that device to be considered for this subrequest. All selectors must be satisfied for a device to be considered.
  final pulumi.Input<List<DeviceSelector>>? selectors;

  /// If specified, the request's tolerations.
  ///
  /// Tolerations for NoSchedule are required to allocate a device which has a taint with that effect. The same applies to NoExecute.
  ///
  /// In addition, should any of the allocated devices get tainted with NoExecute after allocation and that effect is not tolerated, then all pods consuming the ResourceClaim get deleted to evict them. The scheduler will not let new pods reserve the claim while it has these tainted devices. Once all pods are evicted, the claim will get deallocated.
  ///
  /// The maximum number of tolerations is 16.
  ///
  /// This is an alpha field and requires enabling the DRADeviceTaints feature gate.
  final pulumi.Input<List<DeviceToleration>>? tolerations;

  /// Creates a new [DeviceSubRequest].
  /// [allocationMode] AllocationMode and its related fields define how devices are allocated to satisfy this subrequest. Supported values are:
  /// [capacity] Capacity define resource requirements against each capacity.
  /// [count] Count is used only when the count mode is "ExactCount". Must be greater than zero. If AllocationMode is ExactCount and this field is not specified, the default is one.
  /// [deviceClassName] DeviceClassName references a specific DeviceClass, which can define additional configuration and selectors to be inherited by this subrequest.
  /// [name] Name can be used to reference this subrequest in the list of constraints or the list of configurations for the claim. References must use the format &lt;main request&gt;/&lt;subrequest&gt;.
  /// [selectors] Selectors define criteria which must be satisfied by a specific device in order for that device to be considered for this subrequest. All selectors must be satisfied for a device to be considered.
  /// [tolerations] If specified, the request's tolerations.
  DeviceSubRequest({
    this.allocationMode,
    this.capacity,
    this.count,
    required this.deviceClassName,
    required this.name,
    this.selectors,
    this.tolerations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMode': ?allocationMode,
      'capacity':
          ?pulumi.Input.mapOptionalInputValue<
            CapacityRequirements,
            Map<String, dynamic>
          >(capacity, (value) => value.toMap()),
      'count': ?count,
      'deviceClassName': deviceClassName,
      'name': name,
      'selectors':
          ?pulumi.Input.mapOptionalInputValue<
            List<DeviceSelector>,
            List<Map<String, dynamic>>
          >(
            selectors,
            (value) =>
                pulumi.Input.encodeList<DeviceSelector, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tolerations':
          ?pulumi.Input.mapOptionalInputValue<
            List<DeviceToleration>,
            List<Map<String, dynamic>>
          >(
            tolerations,
            (value) =>
                pulumi.Input.encodeList<DeviceToleration, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory DeviceSubRequest.fromMap(Map<String, dynamic> map) {
    return DeviceSubRequest(
      allocationMode: (() {
        final guardedValue = map['allocationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CapacityRequirements.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      deviceClassName: pulumi.Input.fromValue(map['deviceClassName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      selectors: (() {
        final guardedValue = map['selectors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DeviceSelector>(
            guardedValue,
            (value) =>
                DeviceSelector.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      tolerations: (() {
        final guardedValue = map['tolerations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DeviceToleration>(
            guardedValue,
            (value) => DeviceToleration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
