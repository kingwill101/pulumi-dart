// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_matcher_response_networkservices_v1beta1.dart';
import 'traffic_port_selector_response_networkservices_v1beta1.dart';

/// Result data returned by getEndpointPolicy.
class GetEndpointPolicyNetworkservicesV1beta1Result {
  /// Optional. This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints. Refer to Authorization. If this field is not specified, authorization is disabled(no authz checks) for this endpoint.
  final String authorizationPolicy;

  /// Optional. A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints. More specifically, it is applied to the outgoing traffic from the proxy to the endpoint. This is typically used for sidecar model where the proxy identifies itself as endpoint to the control plane, with the connection between sidecar and endpoint requiring authentication. If this field is not set, authentication is disabled(open). Applicable only when EndpointPolicyType is SIDECAR_PROXY.
  final String clientTlsPolicy;

  /// The timestamp when the resource was created.
  final String createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final String description;

  /// A matcher that selects endpoints to which the policies should be applied.
  final EndpointMatcherResponseNetworkservicesV1beta1 endpointMatcher;

  /// Optional. Set of label tags associated with the EndpointPolicy resource.
  final Map<String, String> labels;

  /// Name of the EndpointPolicy resource. It matches pattern `projects/{project}/locations/global/endpointPolicies/{endpoint_policy}`.
  final String name;

  /// Optional. A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends. If this field is not set, authentication is disabled(open) for this endpoint.
  final String serverTlsPolicy;

  /// Optional. Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  final TrafficPortSelectorResponseNetworkservicesV1beta1 trafficPortSelector;

  /// The type of endpoint policy. This is primarily used to validate the configuration.
  final String type;

  /// The timestamp when the resource was updated.
  final String updateTime;

  /// Creates a new [GetEndpointPolicyNetworkservicesV1beta1Result].
  /// [authorizationPolicy] Optional. This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints. Refer to Authorization. If this field is not specified, authorization is disabled(no authz checks) for this endpoint.
  /// [clientTlsPolicy] Optional. A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints. More specifically, it is applied to the outgoing traffic from the proxy to the endpoint. This is typically used for sidecar model where the proxy identifies itself as endpoint to the control plane, with the connection between sidecar and endpoint requiring authentication. If this field is not set, authentication is disabled(open). Applicable only when EndpointPolicyType is SIDECAR_PROXY.
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [endpointMatcher] A matcher that selects endpoints to which the policies should be applied.
  /// [labels] Optional. Set of label tags associated with the EndpointPolicy resource.
  /// [name] Name of the EndpointPolicy resource. It matches pattern `projects/{project}/locations/global/endpointPolicies/{endpoint_policy}`.
  /// [serverTlsPolicy] Optional. A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends. If this field is not set, authentication is disabled(open) for this endpoint.
  /// [trafficPortSelector] Optional. Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  /// [type] The type of endpoint policy. This is primarily used to validate the configuration.
  /// [updateTime] The timestamp when the resource was updated.
  GetEndpointPolicyNetworkservicesV1beta1Result({
    required this.authorizationPolicy,
    required this.clientTlsPolicy,
    required this.createTime,
    required this.description,
    required this.endpointMatcher,
    required this.labels,
    required this.name,
    required this.serverTlsPolicy,
    required this.trafficPortSelector,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicy': authorizationPolicy,
      'clientTlsPolicy': clientTlsPolicy,
      'createTime': createTime,
      'description': description,
      'endpointMatcher': endpointMatcher.toMap(),
      'labels': labels,
      'name': name,
      'serverTlsPolicy': serverTlsPolicy,
      'trafficPortSelector': trafficPortSelector.toMap(),
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetEndpointPolicyNetworkservicesV1beta1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEndpointPolicyNetworkservicesV1beta1Result(
      authorizationPolicy: map['authorizationPolicy'] as String,
      clientTlsPolicy: map['clientTlsPolicy'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      endpointMatcher: EndpointMatcherResponseNetworkservicesV1beta1.fromMap(
        (map['endpointMatcher']! as Map).cast<String, dynamic>(),
      ),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      serverTlsPolicy: map['serverTlsPolicy'] as String,
      trafficPortSelector:
          TrafficPortSelectorResponseNetworkservicesV1beta1.fromMap(
            (map['trafficPortSelector']! as Map).cast<String, dynamic>(),
          ),
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
