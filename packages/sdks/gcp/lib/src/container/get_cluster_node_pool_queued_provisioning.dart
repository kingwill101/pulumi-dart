// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolQueuedProvisioning {
  /// Whether nodes in this node pool are obtainable solely through the ProvisioningRequest API
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterNodePoolQueuedProvisioning].
  /// [enabled] Whether nodes in this node pool are obtainable solely through the ProvisioningRequest API
  GetClusterNodePoolQueuedProvisioning({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterNodePoolQueuedProvisioning.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolQueuedProvisioning(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

