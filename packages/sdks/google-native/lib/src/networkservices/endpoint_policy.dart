import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_matcher_response.dart';
import 'endpoint_policy_args.dart';
import 'traffic_port_selector_response.dart';

/// Creates a new EndpointPolicy in a given project and location.
class EndpointPolicy extends pulumi.CustomResource {
  /// Optional. This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints. Refer to Authorization. If this field is not specified, authorization is disabled(no authz checks) for this endpoint.
  late final pulumi.Output<String> authorizationPolicy;

  /// Optional. A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints. More specifically, it is applied to the outgoing traffic from the proxy to the endpoint. This is typically used for sidecar model where the proxy identifies itself as endpoint to the control plane, with the connection between sidecar and endpoint requiring authentication. If this field is not set, authentication is disabled(open). Applicable only when EndpointPolicyType is SIDECAR_PROXY.
  late final pulumi.Output<String> clientTlsPolicy;

  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String> description;

  /// A matcher that selects endpoints to which the policies should be applied.
  late final pulumi.Output<EndpointMatcherResponse> endpointMatcher;

  /// Required. Short name of the EndpointPolicy resource to be created. E.g. "CustomECS".
  late final pulumi.Output<String> endpointPolicyId;

  /// Optional. Set of label tags associated with the EndpointPolicy resource.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Name of the EndpointPolicy resource. It matches pattern `projects/{project}/locations/global/endpointPolicies/{endpoint_policy}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends. If this field is not set, authentication is disabled(open) for this endpoint.
  late final pulumi.Output<String> serverTlsPolicy;

  /// Optional. Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  late final pulumi.Output<TrafficPortSelectorResponse> trafficPortSelector;

  /// The type of endpoint policy. This is primarily used to validate the configuration.
  late final pulumi.Output<String> type;

  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [EndpointPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointPolicy]. {@macro pulumi_networkservices_v1_endpoint_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointPolicy(
    String name, {
    EndpointPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:networkservices/v1:EndpointPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authorizationPolicy = registerOutput<String>('authorizationPolicy');
    clientTlsPolicy = registerOutput<String>('clientTlsPolicy');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    endpointMatcher = registerOutput<EndpointMatcherResponse>(
      'endpointMatcher',
    );
    endpointPolicyId = registerOutput<String>('endpointPolicyId');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    serverTlsPolicy = registerOutput<String>('serverTlsPolicy');
    trafficPortSelector = registerOutput<TrafficPortSelectorResponse>(
      'trafficPortSelector',
    );
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
