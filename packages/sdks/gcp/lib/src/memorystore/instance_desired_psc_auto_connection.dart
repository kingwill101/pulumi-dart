// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceDesiredPscAutoConnection {
  /// (Output)
  /// Output only. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final pulumi.Input<String> network;
  /// (Output)
  /// Output only. The consumer project_id where the forwarding rule is created from.
  final pulumi.Input<String> projectId;

  /// Creates a new [InstanceDesiredPscAutoConnection].
  /// [network] (Output)
  /// [projectId] (Output)
  const InstanceDesiredPscAutoConnection({
    required this.network,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'projectId': projectId,
    };
  }

  factory InstanceDesiredPscAutoConnection.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredPscAutoConnection(
      network: pulumi.Input.fromValue(map['network'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}

