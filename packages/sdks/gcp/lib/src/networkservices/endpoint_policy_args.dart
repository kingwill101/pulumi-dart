// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_policy_endpoint_matcher.dart';
import 'endpoint_policy_traffic_port_selector.dart';

/// {@template pulumi_networkservices_endpoint_policy_endpoint_policy_args_doc}
/// The set of arguments for EndpointPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_endpoint_policy_endpoint_policy_args_doc}
class EndpointPolicyArgs {
  /// This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints.
  final pulumi.Input<String>? authorizationPolicy;
  /// A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints.
  final pulumi.Input<String>? clientTlsPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Required. A matcher that selects endpoints to which the policies should be applied.
  /// Structure is documented below.
  final pulumi.Input<EndpointPolicyEndpointMatcher> endpointMatcher;
  /// Set of label tags associated with the TcpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the EndpointPolicy resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends.
  final pulumi.Input<String>? serverTlsPolicy;
  /// Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  /// Structure is documented below.
  final pulumi.Input<EndpointPolicyTrafficPortSelector>? trafficPortSelector;
  /// The type of endpoint policy. This is primarily used to validate the configuration.
  /// Possible values are: `SIDECAR_PROXY`, `GRPC_SERVER`.
  final pulumi.Input<String> type;

  /// Creates a new [EndpointPolicyArgs].
  /// [authorizationPolicy] This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints.
  /// [clientTlsPolicy] A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [endpointMatcher] Required. A matcher that selects endpoints to which the policies should be applied.
  /// [labels] Set of label tags associated with the TcpRoute resource.
  /// [name] Name of the EndpointPolicy resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [serverTlsPolicy] A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends.
  /// [trafficPortSelector] Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  /// [type] The type of endpoint policy. This is primarily used to validate the configuration.
  const EndpointPolicyArgs({
    this.authorizationPolicy,
    this.clientTlsPolicy,
    this.description,
    required this.endpointMatcher,
    this.labels,
    this.name,
    this.project,
    this.serverTlsPolicy,
    this.trafficPortSelector,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicy': ?authorizationPolicy,
      'clientTlsPolicy': ?clientTlsPolicy,
      'description': ?description,
      'endpointMatcher': pulumi.Input.mapInputValue<EndpointPolicyEndpointMatcher, Map<String, dynamic>>(endpointMatcher, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'serverTlsPolicy': ?serverTlsPolicy,
      'trafficPortSelector': ?pulumi.Input.mapOptionalInputValue<EndpointPolicyTrafficPortSelector, Map<String, dynamic>>(trafficPortSelector, (value) => value.toMap()),
      'type': type,
    };
  }

  factory EndpointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EndpointPolicyArgs(
      authorizationPolicy: (() { final guardedValue = map['authorizationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientTlsPolicy: (() { final guardedValue = map['clientTlsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointMatcher: pulumi.Input.fromValue(EndpointPolicyEndpointMatcher.fromMap((map['endpointMatcher']! as Map).cast<String, dynamic>())),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverTlsPolicy: (() { final guardedValue = map['serverTlsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficPortSelector: (() { final guardedValue = map['trafficPortSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointPolicyTrafficPortSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

