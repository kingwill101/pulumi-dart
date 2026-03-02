// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityTestRunReachabilityDetailTraceEndpointInfo {
  /// (Output)
  /// Destination IP address.
  final pulumi.Input<String> destinationIp;
  /// (Output)
  /// URI of the network where this packet is sent to.
  final pulumi.Input<String> destinationNetworkUri;
  /// (Output)
  /// Destination port. Only valid when protocol is TCP or UDP.
  final pulumi.Input<int> destinationPort;
  /// (Output)
  /// IP protocol in string format, for example: "TCP", "UDP", "ICMP".
  final pulumi.Input<String> protocol;
  /// (Output)
  /// URI of the source telemetry agent this packet originates from.
  final pulumi.Input<String> sourceAgentUri;
  /// (Output)
  /// Source IP address.
  final pulumi.Input<String> sourceIp;
  /// (Output)
  /// URI of the network where this packet originates from.
  final pulumi.Input<String> sourceNetworkUri;
  /// (Output)
  /// Source port. Only valid when protocol is TCP or UDP.
  final pulumi.Input<int> sourcePort;

  /// Creates a new [GetConnectivityTestRunReachabilityDetailTraceEndpointInfo].
  /// [destinationIp] (Output)
  /// [destinationNetworkUri] (Output)
  /// [destinationPort] (Output)
  /// [protocol] (Output)
  /// [sourceAgentUri] (Output)
  /// [sourceIp] (Output)
  /// [sourceNetworkUri] (Output)
  /// [sourcePort] (Output)
  GetConnectivityTestRunReachabilityDetailTraceEndpointInfo({
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

  factory GetConnectivityTestRunReachabilityDetailTraceEndpointInfo.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestRunReachabilityDetailTraceEndpointInfo(
      destinationIp: (map['destinationIp'] as String).input(),
      destinationNetworkUri: (map['destinationNetworkUri'] as String).input(),
      destinationPort: (map['destinationPort'] as int).input(),
      protocol: (map['protocol'] as String).input(),
      sourceAgentUri: (map['sourceAgentUri'] as String).input(),
      sourceIp: (map['sourceIp'] as String).input(),
      sourceNetworkUri: (map['sourceNetworkUri'] as String).input(),
      sourcePort: (map['sourcePort'] as int).input(),
    );
  }
}

