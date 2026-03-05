// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_policy_endpoint_matcher.dart';
import 'endpoint_policy_traffic_port_selector.dart';

/// Input properties used for looking up and filtering EndpointPolicy resources.
class EndpointPolicyState {
  /// This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints.
  final pulumi.Input<String>? authorizationPolicy;
  /// A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints.
  final pulumi.Input<String>? clientTlsPolicy;
  /// Time the TcpRoute was created in UTC.
  final pulumi.Input<String>? createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Required. A matcher that selects endpoints to which the policies should be applied.
  /// Structure is documented below.
  final pulumi.Input<EndpointPolicyEndpointMatcher>? endpointMatcher;
  /// Set of label tags associated with the TcpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the EndpointPolicy resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends.
  final pulumi.Input<String>? serverTlsPolicy;
  /// Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  /// Structure is documented below.
  final pulumi.Input<EndpointPolicyTrafficPortSelector>? trafficPortSelector;
  /// The type of endpoint policy. This is primarily used to validate the configuration.
  /// Possible values are: `SIDECAR_PROXY`, `GRPC_SERVER`.
  final pulumi.Input<String>? type;
  /// Time the TcpRoute was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [EndpointPolicyState].
  /// [authorizationPolicy] This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints.
  /// [clientTlsPolicy] A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints.
  /// [createTime] Time the TcpRoute was created in UTC.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [endpointMatcher] Required. A matcher that selects endpoints to which the policies should be applied.
  /// [labels] Set of label tags associated with the TcpRoute resource.
  /// [name] Name of the EndpointPolicy resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serverTlsPolicy] A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends.
  /// [trafficPortSelector] Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  /// [type] The type of endpoint policy. This is primarily used to validate the configuration.
  /// [updateTime] Time the TcpRoute was updated in UTC.
  EndpointPolicyState({
    this.authorizationPolicy,
    this.clientTlsPolicy,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.endpointMatcher,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
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
      'effectiveLabels': ?effectiveLabels,
      'endpointMatcher': ?pulumi.Input.mapOptionalInputValue<EndpointPolicyEndpointMatcher, Map<String, dynamic>>(endpointMatcher, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serverTlsPolicy': ?serverTlsPolicy,
      'trafficPortSelector': ?pulumi.Input.mapOptionalInputValue<EndpointPolicyTrafficPortSelector, Map<String, dynamic>>(trafficPortSelector, (value) => value.toMap()),
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory EndpointPolicyState.fromMap(Map<String, dynamic> map) {
    return EndpointPolicyState(
      authorizationPolicy: (() { final guardedValue = map['authorizationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientTlsPolicy: (() { final guardedValue = map['clientTlsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      endpointMatcher: (() { final guardedValue = map['endpointMatcher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointPolicyEndpointMatcher.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serverTlsPolicy: (() { final guardedValue = map['serverTlsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficPortSelector: (() { final guardedValue = map['trafficPortSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointPolicyTrafficPortSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

