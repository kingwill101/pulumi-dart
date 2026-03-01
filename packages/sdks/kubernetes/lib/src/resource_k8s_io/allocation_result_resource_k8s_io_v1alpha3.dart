// ignore_for_file: unused_element, unnecessary_cast

import '../core/node_selector.dart';
import 'device_allocation_result_resource_k8s_io_v1alpha3.dart';

/// AllocationResult contains attributes of an allocated resource.
class AllocationResultResourceK8sIoV1alpha3 {
  /// Controller is the name of the DRA driver which handled the allocation. That driver is also responsible for deallocating the claim. It is empty when the claim can be deallocated without involving a driver.
  ///
  /// A driver may allocate devices provided by other drivers, so this driver name here can be different from the driver names listed for the results.
  ///
  /// This is an alpha field and requires enabling the DRAControlPlaneController feature gate.
  final String? controller;
  /// Devices is the result of allocating devices.
  final DeviceAllocationResultResourceK8sIoV1alpha3? devices;
  /// NodeSelector defines where the allocated resources are available. If unset, they are available everywhere.
  final NodeSelector? nodeSelector;

  /// Creates a new [AllocationResultResourceK8sIoV1alpha3].
  /// [controller] Controller is the name of the DRA driver which handled the allocation. That driver is also responsible for deallocating the claim. It is empty when the claim can be deallocated without involving a driver.
  /// [devices] Devices is the result of allocating devices.
  /// [nodeSelector] NodeSelector defines where the allocated resources are available. If unset, they are available everywhere.
  AllocationResultResourceK8sIoV1alpha3({
    this.controller,
    this.devices,
    this.nodeSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controller': ?controller,
      'devices': ?devices == null ? null : devices!.toMap(),
      'nodeSelector': ?nodeSelector == null ? null : nodeSelector!.toMap(),
    };
  }

  factory AllocationResultResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return AllocationResultResourceK8sIoV1alpha3(
      controller: map['controller'] == null ? null : map['controller'] as String,
      devices: map['devices'] == null ? null : DeviceAllocationResultResourceK8sIoV1alpha3.fromMap((map['devices'] as Map).cast<String, dynamic>()),
      nodeSelector: map['nodeSelector'] == null ? null : NodeSelector.fromMap((map['nodeSelector'] as Map).cast<String, dynamic>()),
    );
  }
}

