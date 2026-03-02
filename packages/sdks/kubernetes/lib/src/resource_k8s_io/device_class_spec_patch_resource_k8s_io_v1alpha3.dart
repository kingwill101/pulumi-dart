// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector_patch.dart';
import 'device_class_configuration_patch_resource_k8s_io_v1alpha3.dart';
import 'device_selector_patch_resource_k8s_io_v1alpha3.dart';

/// DeviceClassSpec is used in a [DeviceClass] to define what can be allocated and how to configure it.
class DeviceClassSpecPatchResourceK8sIoV1alpha3 {
  /// Config defines configuration parameters that apply to each device that is claimed via this class. Some classses may potentially be satisfied by multiple drivers, so each instance of a vendor configuration applies to exactly one driver.
  ///
  /// They are passed to the driver, but are not considered while allocating the claim.
  final pulumi.Input<List<DeviceClassConfigurationPatchResourceK8sIoV1alpha3>>? config;
  /// Each selector must be satisfied by a device which is claimed via this class.
  final pulumi.Input<List<DeviceSelectorPatchResourceK8sIoV1alpha3>>? selectors;
  /// Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a claim that has not been allocated yet *and* that claim gets allocated through a control plane controller. It is ignored when the claim does not use a control plane controller for allocation.
  ///
  /// Setting this field is optional. If unset, all Nodes are candidates.
  ///
  /// This is an alpha field and requires enabling the DRAControlPlaneController feature gate.
  final pulumi.Input<NodeSelectorPatch>? suitableNodes;

  /// Creates a new [DeviceClassSpecPatchResourceK8sIoV1alpha3].
  /// [config] Config defines configuration parameters that apply to each device that is claimed via this class. Some classses may potentially be satisfied by multiple drivers, so each instance of a vendor configuration applies to exactly one driver.
  /// [selectors] Each selector must be satisfied by a device which is claimed via this class.
  /// [suitableNodes] Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a claim that has not been allocated yet *and* that claim gets allocated through a control plane controller. It is ignored when the claim does not use a control plane controller for allocation.
  DeviceClassSpecPatchResourceK8sIoV1alpha3({
    this.config,
    this.selectors,
    this.suitableNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<List<DeviceClassConfigurationPatchResourceK8sIoV1alpha3>, List<Map<String, dynamic>>>(config, (value) => pulumi.Input.encodeList<DeviceClassConfigurationPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<DeviceSelectorPatchResourceK8sIoV1alpha3>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<DeviceSelectorPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
      'suitableNodes': ?pulumi.Input.mapOptionalInputValue<NodeSelectorPatch, Map<String, dynamic>>(suitableNodes, (value) => value.toMap()),
    };
  }

  factory DeviceClassSpecPatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceClassSpecPatchResourceK8sIoV1alpha3(
      config: map['config'] == null ? null : (pulumi.Input.decodeList<DeviceClassConfigurationPatchResourceK8sIoV1alpha3>(map['config']!, (value) => DeviceClassConfigurationPatchResourceK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))).input(),
      selectors: map['selectors'] == null ? null : (pulumi.Input.decodeList<DeviceSelectorPatchResourceK8sIoV1alpha3>(map['selectors']!, (value) => DeviceSelectorPatchResourceK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))).input(),
      suitableNodes: map['suitableNodes'] == null ? null : (NodeSelectorPatch.fromMap((map['suitableNodes']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

