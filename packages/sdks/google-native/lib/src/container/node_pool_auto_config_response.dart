// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_tags_response.dart';
import 'resource_manager_tags_response.dart';

/// Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
class NodePoolAutoConfigResponse {
  /// The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.
  final pulumi.Input<NetworkTagsResponse> networkTags;
  /// Resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies.
  final pulumi.Input<ResourceManagerTagsResponse> resourceManagerTags;

  /// Creates a new [NodePoolAutoConfigResponse].
  /// [networkTags] The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.
  /// [resourceManagerTags] Resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies.
  const NodePoolAutoConfigResponse({
    required this.networkTags,
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkTags': pulumi.Input.mapInputValue<NetworkTagsResponse, Map<String, dynamic>>(networkTags, (value) => value.toMap()),
      'resourceManagerTags': pulumi.Input.mapInputValue<ResourceManagerTagsResponse, Map<String, dynamic>>(resourceManagerTags, (value) => value.toMap()),
    };
  }

  factory NodePoolAutoConfigResponse.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoConfigResponse(
      networkTags: pulumi.Input.fromValue(NetworkTagsResponse.fromMap((map['networkTags']! as Map).cast<String, dynamic>())),
      resourceManagerTags: pulumi.Input.fromValue(ResourceManagerTagsResponse.fromMap((map['resourceManagerTags']! as Map).cast<String, dynamic>())),
    );
  }
}
