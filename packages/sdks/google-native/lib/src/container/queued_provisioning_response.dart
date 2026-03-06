// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// QueuedProvisioning defines the queued provisioning used by the node pool.
class QueuedProvisioningResponse {
  /// Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  final pulumi.Input<bool> enabled;

  /// Creates a new [QueuedProvisioningResponse].
  /// [enabled] Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  const QueuedProvisioningResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory QueuedProvisioningResponse.fromMap(Map<String, dynamic> map) {
    return QueuedProvisioningResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

