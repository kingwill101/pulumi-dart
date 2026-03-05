// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig {
  /// The map of Kubernetes labels (key/value pairs) to be applied to
  /// each node. These will added in addition to any default label(s)
  /// that Kubernetes may apply to the node. In case of conflict in
  /// label keys, the applied set may differ depending on the Kubernetes
  /// version -- it's best to assume the behavior is undefined and
  /// conflicts should be avoided. For more information, including usage
  /// and the valid values, see:
  /// - http://kubernetes.io/v1.1/docs/user-guide/labels.html
  /// An object containing a list of "key": value pairs.
  /// For example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? labels;
  /// The default IPv4 address for SSH access and Kubernetes node.
  /// Example: 192.168.0.1
  final pulumi.Input<String>? nodeIp;

  /// Creates a new [BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig].
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to
  /// [nodeIp] The default IPv4 address for SSH access and Kubernetes node.
  BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig({
    this.labels,
    this.nodeIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'nodeIp': ?nodeIp,
    };
  }

  factory BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      nodeIp: (() { final guardedValue = map['nodeIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

