// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_matcher_response.dart';
import 'traffic_port_selector_response.dart';

/// Result data returned by getEndpointPolicy.
class GetEndpointPolicyResult {
  /// Optional. This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints. Refer to Authorization. If this field is not specified, authorization is disabled(no authz checks) for this endpoint.
  final String? authorizationPolicy;
  /// Optional. A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints. More specifically, it is applied to the outgoing traffic from the proxy to the endpoint. This is typically used for sidecar model where the proxy identifies itself as endpoint to the control plane, with the connection between sidecar and endpoint requiring authentication. If this field is not set, authentication is disabled(open). Applicable only when EndpointPolicyType is SIDECAR_PROXY.
  final String? clientTlsPolicy;
  /// The timestamp when the resource was created.
  final String? createTime;
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final String? description;
  /// A matcher that selects endpoints to which the policies should be applied.
  final EndpointMatcherResponse? endpointMatcher;
  /// Optional. Set of label tags associated with the EndpointPolicy resource.
  final Map<String, String>? labels;
  /// Name of the EndpointPolicy resource. It matches pattern `projects/{project}/locations/global/endpointPolicies/{endpoint_policy}`.
  final String? name;
  /// Optional. A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends. If this field is not set, authentication is disabled(open) for this endpoint.
  final String? serverTlsPolicy;
  /// Optional. Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  final TrafficPortSelectorResponse? trafficPortSelector;
  /// The type of endpoint policy. This is primarily used to validate the configuration.
  final String? type;
  /// The timestamp when the resource was updated.
  final String? updateTime;

  /// Creates a new [GetEndpointPolicyResult].
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
  const GetEndpointPolicyResult({
    this.authorizationPolicy,
    this.clientTlsPolicy,
    this.createTime,
    this.description,
    this.endpointMatcher,
    this.labels,
    this.name,
    this.serverTlsPolicy,
    this.trafficPortSelector,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicy': ?authorizationPolicy,
      'clientTlsPolicy': ?clientTlsPolicy,
      'createTime': ?createTime,
      'description': ?description,
      'endpointMatcher': ?endpointMatcher?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'serverTlsPolicy': ?serverTlsPolicy,
      'trafficPortSelector': ?trafficPortSelector?.toMap(),
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetEndpointPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointPolicyResult(
      authorizationPolicy: (() { final guardedValue = map['authorizationPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientTlsPolicy: (() { final guardedValue = map['clientTlsPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointMatcher: (() { final guardedValue = map['endpointMatcher']; if (guardedValue == null) return null; return EndpointMatcherResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverTlsPolicy: (() { final guardedValue = map['serverTlsPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trafficPortSelector: (() { final guardedValue = map['trafficPortSelector']; if (guardedValue == null) return null; return TrafficPortSelectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
