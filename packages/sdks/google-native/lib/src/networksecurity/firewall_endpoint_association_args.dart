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
  FirewallEndpointAssociationArgs({
    required pulumi.Output<String> firewallEndpoint,
    pulumi.Output<String>? firewallEndpointAssociationId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    required pulumi.Output<String> network,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<String>? tlsInspectionPolicy,
  }) :
      firewallEndpoint = pulumi.Input.asInput<String>(firewallEndpoint),
      firewallEndpointAssociationId = pulumi.Input.asOptionalInput<String>(firewallEndpointAssociationId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      network = pulumi.Input.asInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      tlsInspectionPolicy = pulumi.Input.asOptionalInput<String>(tlsInspectionPolicy);

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
      firewallEndpoint: pulumi.Output.create<String>(map['firewallEndpoint'] as String),
      firewallEndpointAssociationId: map['firewallEndpointAssociationId'] == null ? null : pulumi.Output.create<String>(map['firewallEndpointAssociationId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      network: pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      tlsInspectionPolicy: map['tlsInspectionPolicy'] == null ? null : pulumi.Output.create<String>(map['tlsInspectionPolicy'] as String),
    );
  }
}

