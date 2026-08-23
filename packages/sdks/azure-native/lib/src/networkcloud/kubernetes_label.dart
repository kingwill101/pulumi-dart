// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesLabel {
  /// The name of the label or taint.
  final pulumi.Input<String> key;
  /// The value of the label or taint.
  final pulumi.Input<String> value;

  /// Creates a new [KubernetesLabel].
  /// [key] The name of the label or taint.
  /// [value] The value of the label or taint.
  const KubernetesLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory KubernetesLabel.fromMap(Map<String, dynamic> map) {
    return KubernetesLabel(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
