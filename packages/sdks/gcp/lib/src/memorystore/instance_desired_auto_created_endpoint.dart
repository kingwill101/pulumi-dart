// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceDesiredAutoCreatedEndpoint {
  /// (Optional, Beta)
  /// Immutable. The IP version that the consumer endpoint will use.
  /// Default value is `IPV4`.
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String?>? ipVersion;
  /// Required. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final pulumi.Input<String> network;
  /// Required. The consumer projectId where the forwarding rule is created from.
  final pulumi.Input<String> projectId;

  /// Creates a new [InstanceDesiredAutoCreatedEndpoint].
  /// [ipVersion] (Optional, Beta)
  /// [network] Required. The consumer network where the IP address resides, in the form of
  /// [projectId] Required. The consumer projectId where the forwarding rule is created from.
  const InstanceDesiredAutoCreatedEndpoint({
    this.ipVersion,
    required this.network,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipVersion': ?ipVersion,
      'network': network,
      'projectId': projectId,
    };
  }

  factory InstanceDesiredAutoCreatedEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredAutoCreatedEndpoint(
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}
