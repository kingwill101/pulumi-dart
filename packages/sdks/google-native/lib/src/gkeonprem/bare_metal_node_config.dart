// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalNodeConfig lists machine addresses to access Nodes.
class BareMetalNodeConfig {
  /// The labels assigned to this node. An object containing a list of key/value pairs. The labels here, unioned with the labels set on BareMetalNodePoolConfig are the set of labels that will be applied to the node. If there are any conflicts, the BareMetalNodeConfig labels take precedence. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? labels;

  /// The default IPv4 address for SSH access and Kubernetes node. Example: 192.168.0.1
  final pulumi.Input<String>? nodeIp;

  /// Creates a new [BareMetalNodeConfig].
  /// [labels] The labels assigned to this node. An object containing a list of key/value pairs. The labels here, unioned with the labels set on BareMetalNodePoolConfig are the set of labels that will be applied to the node. If there are any conflicts, the BareMetalNodeConfig labels take precedence. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [nodeIp] The default IPv4 address for SSH access and Kubernetes node. Example: 192.168.0.1
  BareMetalNodeConfig({this.labels, this.nodeIp});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labels': ?labels, 'nodeIp': ?nodeIp};
  }

  factory BareMetalNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalNodeConfig(
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      nodeIp: (() {
        final guardedValue = map['nodeIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
