// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The device this taint is attached to has the "effect" on any claim which does not tolerate the taint and, through the claim, to pods using the claim.
class DeviceTaintPatchResourceK8sIoV1beta2 {
  /// The effect of the taint on claims that do not tolerate the taint and through such claims on the pods using them.
  ///
  /// Valid effects are None, NoSchedule and NoExecute. PreferNoSchedule as used for nodes is not valid here. More effects may get added in the future. Consumers must treat unknown effects like None.
  final pulumi.Input<String>? effect;
  /// The taint key to be applied to a device. Must be a label name.
  final pulumi.Input<String>? key;
  /// TimeAdded represents the time at which the taint was added. Added automatically during create or update if not set.
  final pulumi.Input<String>? timeAdded;
  /// The taint value corresponding to the taint key. Must be a label value.
  final pulumi.Input<String>? value;

  /// Creates a new [DeviceTaintPatchResourceK8sIoV1beta2].
  /// [effect] The effect of the taint on claims that do not tolerate the taint and through such claims on the pods using them.
  /// [key] The taint key to be applied to a device. Must be a label name.
  /// [timeAdded] TimeAdded represents the time at which the taint was added. Added automatically during create or update if not set.
  /// [value] The taint value corresponding to the taint key. Must be a label value.
  DeviceTaintPatchResourceK8sIoV1beta2({
    this.effect,
    this.key,
    this.timeAdded,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'timeAdded': ?timeAdded,
      'value': ?value,
    };
  }

  factory DeviceTaintPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceTaintPatchResourceK8sIoV1beta2(
      effect: map['effect'] == null ? null : (map['effect'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      timeAdded: map['timeAdded'] == null ? null : (map['timeAdded'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

