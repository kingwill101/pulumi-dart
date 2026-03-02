// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalNodeConfig lists machine addresses to access Nodes.
class BareMetalNodeConfigResponse {
  /// The labels assigned to this node. An object containing a list of key/value pairs. The labels here, unioned with the labels set on BareMetalNodePoolConfig are the set of labels that will be applied to the node. If there are any conflicts, the BareMetalNodeConfig labels take precedence. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>> labels;
  /// The default IPv4 address for SSH access and Kubernetes node. Example: 192.168.0.1
  final pulumi.Input<String> nodeIp;

  /// Creates a new [BareMetalNodeConfigResponse].
  /// [labels] The labels assigned to this node. An object containing a list of key/value pairs. The labels here, unioned with the labels set on BareMetalNodePoolConfig are the set of labels that will be applied to the node. If there are any conflicts, the BareMetalNodeConfig labels take precedence. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [nodeIp] The default IPv4 address for SSH access and Kubernetes node. Example: 192.168.0.1
  BareMetalNodeConfigResponse({
    required this.labels,
    required this.nodeIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': labels,
      'nodeIp': nodeIp,
    };
  }

  factory BareMetalNodeConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalNodeConfigResponse(
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      nodeIp: (map['nodeIp'] as String).input(),
    );
  }
}

