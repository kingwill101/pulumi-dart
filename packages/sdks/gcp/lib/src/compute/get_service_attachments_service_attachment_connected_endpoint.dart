// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceAttachmentsServiceAttachmentConnectedEndpoint {
  /// The url of the consumer network.
  final pulumi.Input<String> consumerNetwork;
  /// The URL of the consumer forwarding rule.
  final pulumi.Input<String> endpoint;
  /// NOTE: This field is temporarily non-functional due to an underlying API issue.
  /// Any value provided here will be ignored until the API issue is resolved, expected around 2026-03.
  /// 'The nat IPs of the connected endpoint.'
  final pulumi.Input<List<String>> natIps;
  /// The number of consumer Network Connectivity Center spokes that the connected Private Service Connect endpoint has propagated to.
  final pulumi.Input<int> propagatedConnectionCount;
  /// The PSC connection id of the connected endpoint.
  final pulumi.Input<String> pscConnectionId;
  /// The status of the connection from the consumer forwarding rule to
  /// this service attachment.
  final pulumi.Input<String> status;

  /// Creates a new [GetServiceAttachmentsServiceAttachmentConnectedEndpoint].
  /// [consumerNetwork] The url of the consumer network.
  /// [endpoint] The URL of the consumer forwarding rule.
  /// [natIps] NOTE: This field is temporarily non-functional due to an underlying API issue.
  /// [propagatedConnectionCount] The number of consumer Network Connectivity Center spokes that the connected Private Service Connect endpoint has propagated to.
  /// [pscConnectionId] The PSC connection id of the connected endpoint.
  /// [status] The status of the connection from the consumer forwarding rule to
  const GetServiceAttachmentsServiceAttachmentConnectedEndpoint({
    required this.consumerNetwork,
    required this.endpoint,
    required this.natIps,
    required this.propagatedConnectionCount,
    required this.pscConnectionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerNetwork': consumerNetwork,
      'endpoint': endpoint,
      'natIps': natIps,
      'propagatedConnectionCount': propagatedConnectionCount,
      'pscConnectionId': pscConnectionId,
      'status': status,
    };
  }

  factory GetServiceAttachmentsServiceAttachmentConnectedEndpoint.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentsServiceAttachmentConnectedEndpoint(
      consumerNetwork: pulumi.Input.fromValue(map['consumerNetwork'] as String),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      natIps: pulumi.Input.fromValue((map['natIps'] as List).cast<String>()),
      propagatedConnectionCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['propagatedConnectionCount'])),
      pscConnectionId: pulumi.Input.fromValue(map['pscConnectionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
