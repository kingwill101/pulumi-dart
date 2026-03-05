// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_firewall_endpoint_args_doc}
/// The set of arguments for FirewallEndpoint.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_firewall_endpoint_args_doc}
class FirewallEndpointArgs {
  /// Optional. Project to bill on endpoint uptime usage.
  final pulumi.Input<String>? billingProjectId;
  /// Optional. Description of the firewall endpoint. Max length 2048 characters.
  final pulumi.Input<String>? description;
  /// Required. Id of the requesting object. If auto-generating Id server-side, remove this field and firewall_endpoint_id from the method_signature of Create RPC.
  final pulumi.Input<String> firewallEndpointId;
  /// Optional. Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> organizationId;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [FirewallEndpointArgs].
  /// [billingProjectId] Optional. Project to bill on endpoint uptime usage.
  /// [description] Optional. Description of the firewall endpoint. Max length 2048 characters.
  /// [firewallEndpointId] Required. Id of the requesting object. If auto-generating Id server-side, remove this field and firewall_endpoint_id from the method_signature of Create RPC.
  /// [labels] Optional. Labels as key value pairs
  /// [location] Optional.
  /// [organizationId] Required.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  FirewallEndpointArgs({
    this.billingProjectId,
    this.description,
    required this.firewallEndpointId,
    this.labels,
    this.location,
    required this.organizationId,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingProjectId': ?billingProjectId,
      'description': ?description,
      'firewallEndpointId': firewallEndpointId,
      'labels': ?labels,
      'location': ?location,
      'organizationId': organizationId,
      'requestId': ?requestId,
    };
  }

  factory FirewallEndpointArgs.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointArgs(
      billingProjectId: (() { final guardedValue = map['billingProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallEndpointId: pulumi.Input.fromValue(map['firewallEndpointId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

