// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolPrivateServiceConnect {
  /// Required. Immutable. The network attachment that the worker network interface is connected to. Must be in the format `projects/{project}/regions/{region}/networkAttachments/{networkAttachment}`. The region of network attachment must be the same as the worker pool. See [Network Attachments](https://cloud.google.com/vpc/docs/about-network-attachments)
  final pulumi.Input<String> networkAttachment;
  /// Immutable. Route all traffic through PSC interface. Enable this if you want full control of traffic in the private pool. Configure Cloud NAT for the subnet of network attachment if you need to access public Internet. If false, Only route private IPs, e.g. 10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16 through PSC interface.
  final pulumi.Input<bool?>? routeAllTraffic;

  /// Creates a new [WorkerPoolPrivateServiceConnect].
  /// [networkAttachment] Required. Immutable. The network attachment that the worker network interface is connected to. Must be in the format `projects/{project}/regions/{region}/networkAttachments/{networkAttachment}`. The region of network attachment must be the same as the worker pool. See [Network Attachments](https://cloud.google.com/vpc/docs/about-network-attachments)
  /// [routeAllTraffic] Immutable. Route all traffic through PSC interface. Enable this if you want full control of traffic in the private pool. Configure Cloud NAT for the subnet of network attachment if you need to access public Internet. If false, Only route private IPs, e.g. 10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16 through PSC interface.
  const WorkerPoolPrivateServiceConnect({
    required this.networkAttachment,
    this.routeAllTraffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAttachment': networkAttachment,
      'routeAllTraffic': ?routeAllTraffic,
    };
  }

  factory WorkerPoolPrivateServiceConnect.fromMap(Map<String, dynamic> map) {
    return WorkerPoolPrivateServiceConnect(
      networkAttachment: pulumi.Input.fromValue(map['networkAttachment'] as String),
      routeAllTraffic: (() { final guardedValue = map['routeAllTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
