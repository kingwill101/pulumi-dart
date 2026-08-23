// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// QueuedProvisioning defines the queued provisioning used by the node pool.
class QueuedProvisioningResponseContainerV1beta1 {
  /// Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  final pulumi.Input<bool> enabled;

  /// Creates a new [QueuedProvisioningResponseContainerV1beta1].
  /// [enabled] Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  const QueuedProvisioningResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory QueuedProvisioningResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return QueuedProvisioningResponseContainerV1beta1(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
