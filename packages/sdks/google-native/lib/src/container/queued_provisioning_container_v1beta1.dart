// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// QueuedProvisioning defines the queued provisioning used by the node pool.
class QueuedProvisioningContainerV1beta1 {
  /// Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [QueuedProvisioningContainerV1beta1].
  /// [enabled] Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  QueuedProvisioningContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory QueuedProvisioningContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return QueuedProvisioningContainerV1beta1(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

