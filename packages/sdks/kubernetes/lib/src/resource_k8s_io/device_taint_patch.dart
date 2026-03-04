// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The device this taint is attached to has the "effect" on any claim which does not tolerate the taint and, through the claim, to pods using the claim.
class DeviceTaintPatch {
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

  /// Creates a new [DeviceTaintPatch].
  /// [effect] The effect of the taint on claims that do not tolerate the taint and through such claims on the pods using them.
  /// [key] The taint key to be applied to a device. Must be a label name.
  /// [timeAdded] TimeAdded represents the time at which the taint was added. Added automatically during create or update if not set.
  /// [value] The taint value corresponding to the taint key. Must be a label value.
  DeviceTaintPatch({this.effect, this.key, this.timeAdded, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'timeAdded': ?timeAdded,
      'value': ?value,
    };
  }

  factory DeviceTaintPatch.fromMap(Map<String, dynamic> map) {
    return DeviceTaintPatch(
      effect: (() {
        final guardedValue = map['effect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeAdded: (() {
        final guardedValue = map['timeAdded'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
