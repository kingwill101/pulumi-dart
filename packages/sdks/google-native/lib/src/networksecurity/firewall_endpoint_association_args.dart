// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_firewall_endpoint_association_args_doc}
/// The set of arguments for FirewallEndpointAssociation.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_firewall_endpoint_association_args_doc}
class FirewallEndpointAssociationArgs {
  /// The URL of the FirewallEndpoint that is being associated.
  final pulumi.Input<String> firewallEndpoint;
  /// Optional. Id of the requesting object. If auto-generating Id server-side, remove this field and firewall_endpoint_association_id from the method_signature of Create RPC.
  final pulumi.Input<String>? firewallEndpointAssociationId;
  /// Optional. Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The URL of the network that is being associated.
  final pulumi.Input<String> network;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Optional. The URL of the TlsInspectionPolicy that is being associated.
  final pulumi.Input<String>? tlsInspectionPolicy;

  /// Creates a new [FirewallEndpointAssociationArgs].
  /// [firewallEndpoint] The URL of the FirewallEndpoint that is being associated.
  /// [firewallEndpointAssociationId] Optional. Id of the requesting object. If auto-generating Id server-side, remove this field and firewall_endpoint_association_id from the method_signature of Create RPC.
  /// [labels] Optional. Labels as key value pairs
  /// [location] Optional.
  /// [network] The URL of the network that is being associated.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [tlsInspectionPolicy] Optional. The URL of the TlsInspectionPolicy that is being associated.
  const FirewallEndpointAssociationArgs({
    required this.firewallEndpoint,
    this.firewallEndpointAssociationId,
    this.labels,
    this.location,
    required this.network,
    this.project,
    this.requestId,
    this.tlsInspectionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallEndpoint': firewallEndpoint,
      'firewallEndpointAssociationId': ?firewallEndpointAssociationId,
      'labels': ?labels,
      'location': ?location,
      'network': network,
      'project': ?project,
      'requestId': ?requestId,
      'tlsInspectionPolicy': ?tlsInspectionPolicy,
    };
  }

  factory FirewallEndpointAssociationArgs.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointAssociationArgs(
      firewallEndpoint: pulumi.Input.fromValue(map['firewallEndpoint'] as String),
      firewallEndpointAssociationId: (() { final guardedValue = map['firewallEndpointAssociationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsInspectionPolicy: (() { final guardedValue = map['tlsInspectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

