// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector_patch.dart';
import 'device_allocation_result_patch_resource_k8s_io_v1alpha3.dart';

/// AllocationResult contains attributes of an allocated resource.
class AllocationResultPatchResourceK8sIoV1alpha3 {
  /// Controller is the name of the DRA driver which handled the allocation. That driver is also responsible for deallocating the claim. It is empty when the claim can be deallocated without involving a driver.
  ///
  /// A driver may allocate devices provided by other drivers, so this driver name here can be different from the driver names listed for the results.
  ///
  /// This is an alpha field and requires enabling the DRAControlPlaneController feature gate.
  final pulumi.Input<String>? controller;
  /// Devices is the result of allocating devices.
  final pulumi.Input<DeviceAllocationResultPatchResourceK8sIoV1alpha3>? devices;
  /// NodeSelector defines where the allocated resources are available. If unset, they are available everywhere.
  final pulumi.Input<NodeSelectorPatch>? nodeSelector;

  /// Creates a new [AllocationResultPatchResourceK8sIoV1alpha3].
  /// [controller] Controller is the name of the DRA driver which handled the allocation. That driver is also responsible for deallocating the claim. It is empty when the claim can be deallocated without involving a driver.
  /// [devices] Devices is the result of allocating devices.
  /// [nodeSelector] NodeSelector defines where the allocated resources are available. If unset, they are available everywhere.
  AllocationResultPatchResourceK8sIoV1alpha3({
    this.controller,
    this.devices,
    this.nodeSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controller': ?controller,
      'devices': ?pulumi.Input.mapOptionalInputValue<DeviceAllocationResultPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(devices, (value) => value.toMap()),
      'nodeSelector': ?pulumi.Input.mapOptionalInputValue<NodeSelectorPatch, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
    };
  }

  factory AllocationResultPatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return AllocationResultPatchResourceK8sIoV1alpha3(
      controller: map['controller'] == null ? null : (map['controller']! as String).input(),
      devices: map['devices'] == null ? null : (DeviceAllocationResultPatchResourceK8sIoV1alpha3.fromMap((map['devices']! as Map).cast<String, dynamic>())).input(),
      nodeSelector: map['nodeSelector'] == null ? null : (NodeSelectorPatch.fromMap((map['nodeSelector']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

