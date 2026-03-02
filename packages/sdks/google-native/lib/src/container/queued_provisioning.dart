// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// QueuedProvisioning defines the queued provisioning used by the node pool.
class QueuedProvisioning {
  /// Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [QueuedProvisioning].
  /// [enabled] Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  QueuedProvisioning({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory QueuedProvisioning.fromMap(Map<String, dynamic> map) {
    return QueuedProvisioning(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

