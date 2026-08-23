// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAttachmentConnectedEndpoint {
  /// (Output)
  /// The url of the consumer network.
  final pulumi.Input<String>? consumerNetwork;
  /// (Output)
  /// The URL of the consumer forwarding rule.
  final pulumi.Input<String>? endpoint;
  /// (Output)
  /// NOTE: This field is temporarily non-functional due to an underlying API issue.
  /// Any value provided here will be ignored until the API issue is resolved, expected around 2026-03.
  /// 'The nat IPs of the connected endpoint.'
  final pulumi.Input<List<String>>? natIps;
  /// (Output)
  /// The number of consumer Network Connectivity Center spokes that the connected Private Service Connect endpoint has propagated to.
  final pulumi.Input<int>? propagatedConnectionCount;
  /// (Output)
  /// The PSC connection id of the connected endpoint.
  final pulumi.Input<String>? pscConnectionId;
  /// (Output)
  /// The status of the connection from the consumer forwarding rule to
  /// this service attachment.
  final pulumi.Input<String>? status;

  /// Creates a new [ServiceAttachmentConnectedEndpoint].
  /// [consumerNetwork] (Output)
  /// [endpoint] (Output)
  /// [natIps] (Output)
  /// [propagatedConnectionCount] (Output)
  /// [pscConnectionId] (Output)
  /// [status] (Output)
  const ServiceAttachmentConnectedEndpoint({
    this.consumerNetwork,
    this.endpoint,
    this.natIps,
    this.propagatedConnectionCount,
    this.pscConnectionId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerNetwork': ?consumerNetwork,
      'endpoint': ?endpoint,
      'natIps': ?natIps,
      'propagatedConnectionCount': ?propagatedConnectionCount,
      'pscConnectionId': ?pscConnectionId,
      'status': ?status,
    };
  }

  factory ServiceAttachmentConnectedEndpoint.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentConnectedEndpoint(
      consumerNetwork: (() { final guardedValue = map['consumerNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natIps: (() { final guardedValue = map['natIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      propagatedConnectionCount: (() { final guardedValue = map['propagatedConnectionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pscConnectionId: (() { final guardedValue = map['pscConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
