// ignore_for_file: unused_element, unnecessary_cast


class LkeClusterPoolTaint {
  /// The Kubernetes taint effect. Accepted values are `NoSchedule`, `PreferNoSchedule`, and `NoExecute`. For the descriptions of these values, see [Kubernetes Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/).
  final String effect;
  /// The Kubernetes taint key.
  final String key;
  /// The Kubernetes taint value.
  ///
  /// * `autoscaler` - (Optional) If defined, an autoscaler will be enabled with the given configuration.
  final String value;

  /// Creates a new [LkeClusterPoolTaint].
  /// [effect] The Kubernetes taint effect. Accepted values are `NoSchedule`, `PreferNoSchedule`, and `NoExecute`. For the descriptions of these values, see [Kubernetes Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/).
  /// [key] The Kubernetes taint key.
  /// [value] The Kubernetes taint value.
  LkeClusterPoolTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': effect,
      'key': key,
      'value': value,
    };
  }

  factory LkeClusterPoolTaint.fromMap(Map<String, dynamic> map) {
    return LkeClusterPoolTaint(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

