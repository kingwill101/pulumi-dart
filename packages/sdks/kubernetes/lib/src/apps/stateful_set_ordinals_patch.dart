// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// StatefulSetOrdinals describes the policy used for replica ordinal assignment in this StatefulSet.
class StatefulSetOrdinalsPatch {
  /// start is the number representing the first replica's index. It may be used to number replicas from an alternate index (eg: 1-indexed) over the default 0-indexed names, or to orchestrate progressive movement of replicas from one StatefulSet to another. If set, replica indices will be in the range:
  /// [.spec.ordinals.start, .spec.ordinals.start + .spec.replicas).
  /// If unset, defaults to 0. Replica indices will be in the range:
  /// [0, .spec.replicas).
  final pulumi.Input<int?>? start;

  /// Creates a new [StatefulSetOrdinalsPatch].
  /// [start] start is the number representing the first replica's index. It may be used to number replicas from an alternate index (eg: 1-indexed) over the default 0-indexed names, or to orchestrate progressive movement of replicas from one StatefulSet to another. If set, replica indices will be in the range:
  const StatefulSetOrdinalsPatch({
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'start': ?start,
    };
  }

  factory StatefulSetOrdinalsPatch.fromMap(Map<String, dynamic> map) {
    return StatefulSetOrdinalsPatch(
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
