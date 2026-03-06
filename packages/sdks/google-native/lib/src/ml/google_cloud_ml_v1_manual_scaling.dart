// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for manually scaling a model.
class GoogleCloudMlV1ManualScaling {
  /// The number of nodes to allocate for this model. These nodes are always up, starting from the time the model is deployed, so the cost of operating this model will be proportional to `nodes` * number of hours since last billing cycle plus the cost for each prediction performed.
  final pulumi.Input<int>? nodes;

  /// Creates a new [GoogleCloudMlV1ManualScaling].
  /// [nodes] The number of nodes to allocate for this model. These nodes are always up, starting from the time the model is deployed, so the cost of operating this model will be proportional to `nodes` * number of hours since last billing cycle plus the cost for each prediction performed.
  const GoogleCloudMlV1ManualScaling({
    this.nodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodes': ?nodes,
    };
  }

  factory GoogleCloudMlV1ManualScaling.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1ManualScaling(
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

