// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector.dart';
import 'device_class_configuration_resource_k8s_io_v1alpha3.dart';
import 'device_selector_resource_k8s_io_v1alpha3.dart';

/// DeviceClassSpec is used in a [DeviceClass] to define what can be allocated and how to configure it.
class DeviceClassSpecResourceK8sIoV1alpha3 {
  /// Config defines configuration parameters that apply to each device that is claimed via this class. Some classses may potentially be satisfied by multiple drivers, so each instance of a vendor configuration applies to exactly one driver.
  ///
  /// They are passed to the driver, but are not considered while allocating the claim.
  final List<DeviceClassConfigurationResourceK8sIoV1alpha3>? config;
  /// Each selector must be satisfied by a device which is claimed via this class.
  final List<DeviceSelectorResourceK8sIoV1alpha3>? selectors;
  /// Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a claim that has not been allocated yet *and* that claim gets allocated through a control plane controller. It is ignored when the claim does not use a control plane controller for allocation.
  ///
  /// Setting this field is optional. If unset, all Nodes are candidates.
  ///
  /// This is an alpha field and requires enabling the DRAControlPlaneController feature gate.
  final NodeSelector? suitableNodes;

  /// Creates a new [DeviceClassSpecResourceK8sIoV1alpha3].
  /// [config] Config defines configuration parameters that apply to each device that is claimed via this class. Some classses may potentially be satisfied by multiple drivers, so each instance of a vendor configuration applies to exactly one driver.
  /// [selectors] Each selector must be satisfied by a device which is claimed via this class.
  /// [suitableNodes] Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a claim that has not been allocated yet *and* that claim gets allocated through a control plane controller. It is ignored when the claim does not use a control plane controller for allocation.
  DeviceClassSpecResourceK8sIoV1alpha3({
    this.config,
    this.selectors,
    this.suitableNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config == null ? null : pulumi.Input.encodeList<DeviceClassConfigurationResourceK8sIoV1alpha3, Map<String, dynamic>>(config!, (value) => value.toMap()),
      'selectors': ?selectors == null ? null : pulumi.Input.encodeList<DeviceSelectorResourceK8sIoV1alpha3, Map<String, dynamic>>(selectors!, (value) => value.toMap()),
      'suitableNodes': ?suitableNodes == null ? null : suitableNodes!.toMap(),
    };
  }

  factory DeviceClassSpecResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceClassSpecResourceK8sIoV1alpha3(
      config: map['config'] == null ? null : pulumi.Input.decodeList<DeviceClassConfigurationResourceK8sIoV1alpha3>(map['config'], (value) => DeviceClassConfigurationResourceK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>())),
      selectors: map['selectors'] == null ? null : pulumi.Input.decodeList<DeviceSelectorResourceK8sIoV1alpha3>(map['selectors'], (value) => DeviceSelectorResourceK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>())),
      suitableNodes: map['suitableNodes'] == null ? null : NodeSelector.fromMap((map['suitableNodes'] as Map).cast<String, dynamic>()),
    );
  }
}

