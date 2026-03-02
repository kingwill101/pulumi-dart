// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfig {
  /// "The Kubernetes node labels"
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [NodePoolNodeConfig].
  /// [labels] "The Kubernetes node labels"
  NodePoolNodeConfig({
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
    };
  }

  factory NodePoolNodeConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfig(
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
    );
  }
}

