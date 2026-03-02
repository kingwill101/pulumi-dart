// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ResourceClaim this DeviceToleration is attached to tolerates any taint that matches the triple <key,value,effect> using the matching operator <operator>.
class DeviceTolerationResourceK8sIoV1beta2 {
  /// Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule and NoExecute.
  final pulumi.Input<String>? effect;
  /// Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys. Must be a label name.
  final pulumi.Input<String>? key;
  /// Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a ResourceClaim can tolerate all taints of a particular category.
  final pulumi.Input<String>? operator;
  /// TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system. If larger than zero, the time when the pod needs to be evicted is calculated as <time when taint was adedd> + <toleration seconds>.
  final pulumi.Input<int>? tolerationSeconds;
  /// Value is the taint value the toleration matches to. If the operator is Exists, the value must be empty, otherwise just a regular string. Must be a label value.
  final pulumi.Input<String>? value;

  /// Creates a new [DeviceTolerationResourceK8sIoV1beta2].
  /// [effect] Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule and NoExecute.
  /// [key] Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys. Must be a label name.
  /// [operator] Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a ResourceClaim can tolerate all taints of a particular category.
  /// [tolerationSeconds] TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system. If larger than zero, the time when the pod needs to be evicted is calculated as <time when taint was adedd> + <toleration seconds>.
  /// [value] Value is the taint value the toleration matches to. If the operator is Exists, the value must be empty, otherwise just a regular string. Must be a label value.
  DeviceTolerationResourceK8sIoV1beta2({
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

  factory DeviceTolerationResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceTolerationResourceK8sIoV1beta2(
      effect: map['effect'] == null ? null : (map['effect'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      operator: map['operator'] == null ? null : (map['operator'] as String).input(),
      tolerationSeconds: map['tolerationSeconds'] == null ? null : (map['tolerationSeconds'] as int).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

