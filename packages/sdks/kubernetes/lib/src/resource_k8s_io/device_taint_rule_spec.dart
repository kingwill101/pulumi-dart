// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_taint_resource_k8s_io_v1alpha3.dart';
import 'device_taint_selector.dart';

/// DeviceTaintRuleSpec specifies the selector and one taint.
class DeviceTaintRuleSpec {
  /// DeviceSelector defines which device(s) the taint is applied to. All selector criteria must be satisfied for a device to match. The empty selector matches all devices. Without a selector, no devices are matches.
  final pulumi.Input<DeviceTaintSelector>? deviceSelector;
  /// The taint that gets applied to matching devices.
  final pulumi.Input<DeviceTaintResourceK8sIoV1alpha3> taint;

  /// Creates a new [DeviceTaintRuleSpec].
  /// [deviceSelector] DeviceSelector defines which device(s) the taint is applied to. All selector criteria must be satisfied for a device to match. The empty selector matches all devices. Without a selector, no devices are matches.
  /// [taint] The taint that gets applied to matching devices.
  DeviceTaintRuleSpec({
    this.deviceSelector,
    required this.taint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceSelector': ?pulumi.Input.mapOptionalInputValue<DeviceTaintSelector, Map<String, dynamic>>(deviceSelector, (value) => value.toMap()),
      'taint': pulumi.Input.mapInputValue<DeviceTaintResourceK8sIoV1alpha3, Map<String, dynamic>>(taint, (value) => value.toMap()),
    };
  }

  factory DeviceTaintRuleSpec.fromMap(Map<String, dynamic> map) {
    return DeviceTaintRuleSpec(
      deviceSelector: (() { final guardedValue = map['deviceSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceTaintSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taint: pulumi.Input.fromValue(DeviceTaintResourceK8sIoV1alpha3.fromMap((map['taint']! as Map).cast<String, dynamic>())),
    );
  }
}

