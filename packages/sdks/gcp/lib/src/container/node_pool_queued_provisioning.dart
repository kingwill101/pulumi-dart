// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolQueuedProvisioning {
  /// Makes nodes obtainable through the [ProvisioningRequest API](https://cloud.google.com/kubernetes-engine/docs/how-to/provisioningrequest) exclusively.
  final pulumi.Input<bool> enabled;

  /// Creates a new [NodePoolQueuedProvisioning].
  /// [enabled] Makes nodes obtainable through the [ProvisioningRequest API](https://cloud.google.com/kubernetes-engine/docs/how-to/provisioningrequest) exclusively.
  const NodePoolQueuedProvisioning({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory NodePoolQueuedProvisioning.fromMap(Map<String, dynamic> map) {
    return NodePoolQueuedProvisioning(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

