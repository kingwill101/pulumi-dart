// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. The specification of the endpoints for the test. EndpointInfo is derived from source and destination Endpoint and validated by the backend data plane model.
class EndpointInfoResponseNetworkmanagementV1beta1 {
  /// Destination IP address.
  final pulumi.Input<String> destinationIp;
  /// URI of the network where this packet is sent to.
  final pulumi.Input<String> destinationNetworkUri;
  /// Destination port. Only valid when protocol is TCP or UDP.
  final pulumi.Input<int> destinationPort;
  /// IP protocol in string format, for example: "TCP", "UDP", "ICMP".
  final pulumi.Input<String> protocol;
  /// URI of the source telemetry agent this packet originates from.
  final pulumi.Input<String> sourceAgentUri;
  /// Source IP address.
  final pulumi.Input<String> sourceIp;
  /// URI of the network where this packet originates from.
  final pulumi.Input<String> sourceNetworkUri;
  /// Source port. Only valid when protocol is TCP or UDP.
  final pulumi.Input<int> sourcePort;

  /// Creates a new [EndpointInfoResponseNetworkmanagementV1beta1].
  /// [destinationIp] Destination IP address.
  /// [destinationNetworkUri] URI of the network where this packet is sent to.
  /// [destinationPort] Destination port. Only valid when protocol is TCP or UDP.
  /// [protocol] IP protocol in string format, for example: "TCP", "UDP", "ICMP".
  /// [sourceAgentUri] URI of the source telemetry agent this packet originates from.
  /// [sourceIp] Source IP address.
  /// [sourceNetworkUri] URI of the network where this packet originates from.
  /// [sourcePort] Source port. Only valid when protocol is TCP or UDP.
  const EndpointInfoResponseNetworkmanagementV1beta1({
    required this.destinationIp,
    required this.destinationNetworkUri,
    required this.destinationPort,
    required this.protocol,
    required this.sourceAgentUri,
    required this.sourceIp,
    required this.sourceNetworkUri,
    required this.sourcePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationIp': destinationIp,
      'destinationNetworkUri': destinationNetworkUri,
      'destinationPort': destinationPort,
      'protocol': protocol,
      'sourceAgentUri': sourceAgentUri,
      'sourceIp': sourceIp,
      'sourceNetworkUri': sourceNetworkUri,
      'sourcePort': sourcePort,
    };
  }

  factory EndpointInfoResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return EndpointInfoResponseNetworkmanagementV1beta1(
      destinationIp: pulumi.Input.fromValue(map['destinationIp'] as String),
      destinationNetworkUri: pulumi.Input.fromValue(map['destinationNetworkUri'] as String),
      destinationPort: pulumi.Input.fromValue(map['destinationPort'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      sourceAgentUri: pulumi.Input.fromValue(map['sourceAgentUri'] as String),
      sourceIp: pulumi.Input.fromValue(map['sourceIp'] as String),
      sourceNetworkUri: pulumi.Input.fromValue(map['sourceNetworkUri'] as String),
      sourcePort: pulumi.Input.fromValue(map['sourcePort'] as int),
    );
  }
}
