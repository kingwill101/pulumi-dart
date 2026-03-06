// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceDesiredAutoCreatedEndpoint {
  /// (Output)
  /// Output only. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final pulumi.Input<String> network;
  /// (Output)
  /// Output only. The consumer project_id where the forwarding rule is created from.
  final pulumi.Input<String> projectId;

  /// Creates a new [InstanceDesiredAutoCreatedEndpoint].
  /// [network] (Output)
  /// [projectId] (Output)
  const InstanceDesiredAutoCreatedEndpoint({
    required this.network,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'projectId': projectId,
    };
  }

  factory InstanceDesiredAutoCreatedEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredAutoCreatedEndpoint(
      network: pulumi.Input.fromValue(map['network'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}

