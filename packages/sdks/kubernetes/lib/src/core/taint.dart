// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The node this Taint is attached to has the "effect" on any pod that does not tolerate the Taint.
class Taint {
  /// Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
  final pulumi.Input<String> effect;
  /// Required. The taint key to be applied to a node.
  final pulumi.Input<String> key;
  /// TimeAdded represents the time at which the taint was added.
  final pulumi.Input<String>? timeAdded;
  /// The taint value corresponding to the taint key.
  final pulumi.Input<String>? value;

  /// Creates a new [Taint].
  /// [effect] Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
  /// [key] Required. The taint key to be applied to a node.
  /// [timeAdded] TimeAdded represents the time at which the taint was added.
  /// [value] The taint value corresponding to the taint key.
  Taint({
    required this.effect,
    required this.key,
    this.timeAdded,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': effect,
      'key': key,
      'timeAdded': ?timeAdded,
      'value': ?value,
    };
  }

  factory Taint.fromMap(Map<String, dynamic> map) {
    return Taint(
      effect: (map['effect'] as String).input(),
      key: (map['key'] as String).input(),
      timeAdded: map['timeAdded'] == null ? null : (map['timeAdded'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

