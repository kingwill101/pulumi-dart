// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_taint_patch_resource_k8s_io_v1beta2.dart';
import 'device_taint_selector_patch_resource_k8s_io_v1beta2.dart';

/// DeviceTaintRuleSpec specifies the selector and one taint.
class DeviceTaintRuleSpecPatchResourceK8sIoV1beta2 {
  /// DeviceSelector defines which device(s) the taint is applied to. All selector criteria must be satisfied for a device to match. The empty selector matches all devices. Without a selector, no devices are matches.
  final pulumi.Input<DeviceTaintSelectorPatchResourceK8sIoV1beta2?>? deviceSelector;
  /// The taint that gets applied to matching devices.
  final pulumi.Input<DeviceTaintPatchResourceK8sIoV1beta2?>? taint;

  /// Creates a new [DeviceTaintRuleSpecPatchResourceK8sIoV1beta2].
  /// [deviceSelector] DeviceSelector defines which device(s) the taint is applied to. All selector criteria must be satisfied for a device to match. The empty selector matches all devices. Without a selector, no devices are matches.
  /// [taint] The taint that gets applied to matching devices.
  const DeviceTaintRuleSpecPatchResourceK8sIoV1beta2({
    this.deviceSelector,
    this.taint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceSelector': ?pulumi.Input.mapOptionalInputValue<DeviceTaintSelectorPatchResourceK8sIoV1beta2, Map<String, dynamic>>(deviceSelector, (value) => value.toMap()),
      'taint': ?pulumi.Input.mapOptionalInputValue<DeviceTaintPatchResourceK8sIoV1beta2, Map<String, dynamic>>(taint, (value) => value.toMap()),
    };
  }

  factory DeviceTaintRuleSpecPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceTaintRuleSpecPatchResourceK8sIoV1beta2(
      deviceSelector: (() { final guardedValue = map['deviceSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceTaintSelectorPatchResourceK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taint: (() { final guardedValue = map['taint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceTaintPatchResourceK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
