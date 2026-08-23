// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfig {
  /// "The Kubernetes node labels"
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [NodePoolNodeConfig].
  /// [labels] "The Kubernetes node labels"
  const NodePoolNodeConfig({
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
    };
  }

  factory NodePoolNodeConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfig(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
