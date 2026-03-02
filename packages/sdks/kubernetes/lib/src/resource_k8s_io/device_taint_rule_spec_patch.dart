// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_taint_patch_resource_k8s_io_v1alpha3.dart';
import 'device_taint_selector_patch.dart';

/// DeviceTaintRuleSpec specifies the selector and one taint.
class DeviceTaintRuleSpecPatch {
  /// DeviceSelector defines which device(s) the taint is applied to. All selector criteria must be satisfied for a device to match. The empty selector matches all devices. Without a selector, no devices are matches.
  final pulumi.Input<DeviceTaintSelectorPatch>? deviceSelector;
  /// The taint that gets applied to matching devices.
  final pulumi.Input<DeviceTaintPatchResourceK8sIoV1alpha3>? taint;

  /// Creates a new [DeviceTaintRuleSpecPatch].
  /// [deviceSelector] DeviceSelector defines which device(s) the taint is applied to. All selector criteria must be satisfied for a device to match. The empty selector matches all devices. Without a selector, no devices are matches.
  /// [taint] The taint that gets applied to matching devices.
  DeviceTaintRuleSpecPatch({
    this.deviceSelector,
    this.taint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceSelector': ?pulumi.Input.mapOptionalInputValue<DeviceTaintSelectorPatch, Map<String, dynamic>>(deviceSelector, (value) => value.toMap()),
      'taint': ?pulumi.Input.mapOptionalInputValue<DeviceTaintPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(taint, (value) => value.toMap()),
    };
  }

  factory DeviceTaintRuleSpecPatch.fromMap(Map<String, dynamic> map) {
    return DeviceTaintRuleSpecPatch(
      deviceSelector: map['deviceSelector'] == null ? null : (DeviceTaintSelectorPatch.fromMap((map['deviceSelector']! as Map).cast<String, dynamic>())).input(),
      taint: map['taint'] == null ? null : (DeviceTaintPatchResourceK8sIoV1alpha3.fromMap((map['taint']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

