// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceDesiredPscAutoConnection {
  /// Required. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final pulumi.Input<String> network;
  /// Required. The consumer project_id where the forwarding rule is created from.
  final pulumi.Input<String> projectId;

  /// Creates a new [GetInstanceDesiredPscAutoConnection].
  /// [network] Required. The consumer network where the IP address resides, in the form of
  /// [projectId] Required. The consumer project_id where the forwarding rule is created from.
  GetInstanceDesiredPscAutoConnection({
    required this.network,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'projectId': projectId,
    };
  }

  factory GetInstanceDesiredPscAutoConnection.fromMap(Map<String, dynamic> map) {
    return GetInstanceDesiredPscAutoConnection(
      network: pulumi.Input.fromValue(map['network'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}

