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
  /// The nat IPs of the connected endpoint.
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
  ServiceAttachmentConnectedEndpoint({
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
      consumerNetwork: map['consumerNetwork'] == null ? null : (map['consumerNetwork']! as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      natIps: map['natIps'] == null ? null : ((map['natIps']! as List).cast<String>()).input(),
      propagatedConnectionCount: map['propagatedConnectionCount'] == null ? null : (map['propagatedConnectionCount']! as int).input(),
      pscConnectionId: map['pscConnectionId'] == null ? null : (map['pscConnectionId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

