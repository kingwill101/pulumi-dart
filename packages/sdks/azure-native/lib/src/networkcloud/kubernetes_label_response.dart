// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesLabelResponse {
  /// The name of the label or taint.
  final pulumi.Input<String> key;
  /// The value of the label or taint.
  final pulumi.Input<String> value;

  /// Creates a new [KubernetesLabelResponse].
  /// [key] The name of the label or taint.
  /// [value] The value of the label or taint.
  const KubernetesLabelResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory KubernetesLabelResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesLabelResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
