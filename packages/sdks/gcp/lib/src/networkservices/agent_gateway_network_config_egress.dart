// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentGatewayNetworkConfigEgress {
  /// The URI of the Network Attachment resource.
  final pulumi.Input<String> networkAttachment;

  /// Creates a new [AgentGatewayNetworkConfigEgress].
  /// [networkAttachment] The URI of the Network Attachment resource.
  const AgentGatewayNetworkConfigEgress({
    required this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAttachment': networkAttachment,
    };
  }

  factory AgentGatewayNetworkConfigEgress.fromMap(Map<String, dynamic> map) {
    return AgentGatewayNetworkConfigEgress(
      networkAttachment: pulumi.Input.fromValue(map['networkAttachment'] as String),
    );
  }
}
