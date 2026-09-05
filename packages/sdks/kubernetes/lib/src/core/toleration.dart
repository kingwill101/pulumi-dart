// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The pod this Toleration is attached to tolerates any taint that matches the triple &lt;key,value,effect&gt; using the matching operator &lt;operator&gt;.
class Toleration {
  /// Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.
  final pulumi.Input<String?>? effect;
  /// Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
  final pulumi.Input<String?>? key;
  /// Operator represents a key's relationship to the value. Valid operators are Exists, Equal, Lt, and Gt. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category. Lt and Gt perform numeric comparisons (requires feature gate TaintTolerationComparisonOperators).
  final pulumi.Input<String?>? operator;
  /// TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.
  final pulumi.Input<int?>? tolerationSeconds;
  /// Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
  final pulumi.Input<String?>? value;

  /// Creates a new [Toleration].
  /// [effect] Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.
  /// [key] Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
  /// [operator] Operator represents a key's relationship to the value. Valid operators are Exists, Equal, Lt, and Gt. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category. Lt and Gt perform numeric comparisons (requires feature gate TaintTolerationComparisonOperators).
  /// [tolerationSeconds] TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.
  /// [value] Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
  const Toleration({
    this.effect,
    this.key,
    this.operator,
    this.tolerationSeconds,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'operator': ?operator,
      'tolerationSeconds': ?tolerationSeconds,
      'value': ?value,
    };
  }

  factory Toleration.fromMap(Map<String, dynamic> map) {
    return Toleration(
      effect: (() { final guardedValue = map['effect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tolerationSeconds: (() { final guardedValue = map['tolerationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
