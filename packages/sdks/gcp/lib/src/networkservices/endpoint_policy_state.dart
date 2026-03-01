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
    pulumi.Output<String>? authorizationPolicy,
    pulumi.Output<String>? clientTlsPolicy,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<EndpointPolicyEndpointMatcher>? endpointMatcher,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? serverTlsPolicy,
    pulumi.Output<EndpointPolicyTrafficPortSelector>? trafficPortSelector,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updateTime,
  }) :
      authorizationPolicy = pulumi.Input.asOptionalInput<String>(authorizationPolicy),
      clientTlsPolicy = pulumi.Input.asOptionalInput<String>(clientTlsPolicy),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      endpointMatcher = pulumi.Input.asOptionalInput<EndpointPolicyEndpointMatcher>(endpointMatcher),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      serverTlsPolicy = pulumi.Input.asOptionalInput<String>(serverTlsPolicy),
      trafficPortSelector = pulumi.Input.asOptionalInput<EndpointPolicyTrafficPortSelector>(trafficPortSelector),
      type = pulumi.Input.asOptionalInput<String>(type),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      authorizationPolicy: map['authorizationPolicy'] == null ? null : pulumi.Output.create<String>(map['authorizationPolicy'] as String),
      clientTlsPolicy: map['clientTlsPolicy'] == null ? null : pulumi.Output.create<String>(map['clientTlsPolicy'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      endpointMatcher: map['endpointMatcher'] == null ? null : pulumi.Output.create<EndpointPolicyEndpointMatcher>(EndpointPolicyEndpointMatcher.fromMap((map['endpointMatcher'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      serverTlsPolicy: map['serverTlsPolicy'] == null ? null : pulumi.Output.create<String>(map['serverTlsPolicy'] as String),
      trafficPortSelector: map['trafficPortSelector'] == null ? null : pulumi.Output.create<EndpointPolicyTrafficPortSelector>(EndpointPolicyTrafficPortSelector.fromMap((map['trafficPortSelector'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

