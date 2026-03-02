// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_matcher_networkservices_v1beta1.dart';
import 'endpoint_policy_type_networkservices_v1beta1.dart';
import 'traffic_port_selector_networkservices_v1beta1.dart';

/// {@template pulumi_networkservices_v1beta1_endpoint_policy_networkservices_v1beta1_args_doc}
/// The set of arguments for EndpointPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_endpoint_policy_networkservices_v1beta1_args_doc}
class EndpointPolicyNetworkservicesV1beta1Args {
  /// Optional. This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints. Refer to Authorization. If this field is not specified, authorization is disabled(no authz checks) for this endpoint.
  final pulumi.Input<String>? authorizationPolicy;
  /// Optional. A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints. More specifically, it is applied to the outgoing traffic from the proxy to the endpoint. This is typically used for sidecar model where the proxy identifies itself as endpoint to the control plane, with the connection between sidecar and endpoint requiring authentication. If this field is not set, authentication is disabled(open). Applicable only when EndpointPolicyType is SIDECAR_PROXY.
  final pulumi.Input<String>? clientTlsPolicy;
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// A matcher that selects endpoints to which the policies should be applied.
  final pulumi.Input<EndpointMatcherNetworkservicesV1beta1> endpointMatcher;
  /// Required. Short name of the EndpointPolicy resource to be created. E.g. "CustomECS".
  final pulumi.Input<String> endpointPolicyId;
  /// Optional. Set of label tags associated with the EndpointPolicy resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Name of the EndpointPolicy resource. It matches pattern `projects/{project}/locations/global/endpointPolicies/{endpoint_policy}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends. If this field is not set, authentication is disabled(open) for this endpoint.
  final pulumi.Input<String>? serverTlsPolicy;
  /// Optional. Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  final pulumi.Input<TrafficPortSelectorNetworkservicesV1beta1>? trafficPortSelector;
  /// The type of endpoint policy. This is primarily used to validate the configuration.
  final pulumi.Input<EndpointPolicyTypeNetworkservicesV1beta1> type;

  /// Creates a new [EndpointPolicyNetworkservicesV1beta1Args].
  /// [authorizationPolicy] Optional. This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints. Refer to Authorization. If this field is not specified, authorization is disabled(no authz checks) for this endpoint.
  /// [clientTlsPolicy] Optional. A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints. More specifically, it is applied to the outgoing traffic from the proxy to the endpoint. This is typically used for sidecar model where the proxy identifies itself as endpoint to the control plane, with the connection between sidecar and endpoint requiring authentication. If this field is not set, authentication is disabled(open). Applicable only when EndpointPolicyType is SIDECAR_PROXY.
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [endpointMatcher] A matcher that selects endpoints to which the policies should be applied.
  /// [endpointPolicyId] Required. Short name of the EndpointPolicy resource to be created. E.g. "CustomECS".
  /// [labels] Optional. Set of label tags associated with the EndpointPolicy resource.
  /// [location] Optional.
  /// [name] Name of the EndpointPolicy resource. It matches pattern `projects/{project}/locations/global/endpointPolicies/{endpoint_policy}`.
  /// [project] Optional.
  /// [serverTlsPolicy] Optional. A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends. If this field is not set, authentication is disabled(open) for this endpoint.
  /// [trafficPortSelector] Optional. Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  /// [type] The type of endpoint policy. This is primarily used to validate the configuration.
  EndpointPolicyNetworkservicesV1beta1Args({
    this.authorizationPolicy,
    this.clientTlsPolicy,
    this.description,
    required this.endpointMatcher,
    required this.endpointPolicyId,
    this.labels,
    this.location,
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
      'endpointMatcher': pulumi.Input.mapInputValue<EndpointMatcherNetworkservicesV1beta1, Map<String, dynamic>>(endpointMatcher, (value) => value.toMap()),
      'endpointPolicyId': endpointPolicyId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serverTlsPolicy': ?serverTlsPolicy,
      'trafficPortSelector': ?pulumi.Input.mapOptionalInputValue<TrafficPortSelectorNetworkservicesV1beta1, Map<String, dynamic>>(trafficPortSelector, (value) => value.toMap()),
      'type': pulumi.Input.mapInputValue<EndpointPolicyTypeNetworkservicesV1beta1, String>(type, (value) => value.value),
    };
  }

  factory EndpointPolicyNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return EndpointPolicyNetworkservicesV1beta1Args(
      authorizationPolicy: map['authorizationPolicy'] == null ? null : (map['authorizationPolicy'] as String).input(),
      clientTlsPolicy: map['clientTlsPolicy'] == null ? null : (map['clientTlsPolicy'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      endpointMatcher: (EndpointMatcherNetworkservicesV1beta1.fromMap((map['endpointMatcher'] as Map).cast<String, dynamic>())).input(),
      endpointPolicyId: (map['endpointPolicyId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serverTlsPolicy: map['serverTlsPolicy'] == null ? null : (map['serverTlsPolicy'] as String).input(),
      trafficPortSelector: map['trafficPortSelector'] == null ? null : (TrafficPortSelectorNetworkservicesV1beta1.fromMap((map['trafficPortSelector'] as Map).cast<String, dynamic>())).input(),
      type: (EndpointPolicyTypeNetworkservicesV1beta1.fromValue(map['type'] as String)).input(),
    );
  }
}

