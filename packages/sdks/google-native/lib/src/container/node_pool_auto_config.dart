// ignore_for_file: unused_element, unnecessary_cast

import 'network_tags.dart';
import 'resource_manager_tags.dart';

/// Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
class NodePoolAutoConfig {
  /// The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.
  final NetworkTags? networkTags;
  /// Resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies.
  final ResourceManagerTags? resourceManagerTags;

  /// Creates a new [NodePoolAutoConfig].
  /// [networkTags] The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.
  /// [resourceManagerTags] Resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies.
  NodePoolAutoConfig({
    this.networkTags,
    this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkTags': ?networkTags == null ? null : networkTags!.toMap(),
      'resourceManagerTags': ?resourceManagerTags == null ? null : resourceManagerTags!.toMap(),
    };
  }

  factory NodePoolAutoConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoConfig(
      networkTags: map['networkTags'] == null ? null : NetworkTags.fromMap((map['networkTags'] as Map).cast<String, dynamic>()),
      resourceManagerTags: map['resourceManagerTags'] == null ? null : ResourceManagerTags.fromMap((map['resourceManagerTags'] as Map).cast<String, dynamic>()),
    );
  }
}

