// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_region_target_http_proxy_compute_beta_args_doc}
/// The set of arguments for RegionTargetHttpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_region_target_http_proxy_compute_beta_args_doc}
class RegionTargetHttpProxyComputeBetaArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// URLs to networkservices.HttpFilter resources enabled for xDS clients using this configuration. For example, https://networkservices.googleapis.com/v1alpha1/projects/project/locations/ locationhttpFilters/httpFilter Only filters that handle outbound connection and stream events may be specified. These filters work in conjunction with a default set of HTTP filters that may already be configured by Traffic Director. Traffic Director will determine the final location of these filters within xDS configuration based on the name of the HTTP filter. If Traffic Director positions multiple filters at the same location, those filters will be in the same order as specified in this list. httpFilters only applies for loadbalancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED. See ForwardingRule for more details.
  final pulumi.Input<List<String>>? httpFilters;
  /// Specifies how long to keep a connection open, after completing a response, while there is no matching traffic (in seconds). If an HTTP keep-alive is not specified, a default value (610 seconds) will be used. For global external Application Load Balancers, the minimum allowed value is 5 seconds and the maximum allowed value is 1200 seconds. For classic Application Load Balancers, this option is not supported.
  final pulumi.Input<int>? httpKeepAliveTimeoutSec;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  final pulumi.Input<bool>? proxyBind;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// URL to the UrlMap resource that defines the mapping from URL to the BackendService.
  final pulumi.Input<String>? urlMap;

  /// Creates a new [RegionTargetHttpProxyComputeBetaArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [httpFilters] URLs to networkservices.HttpFilter resources enabled for xDS clients using this configuration. For example, https://networkservices.googleapis.com/v1alpha1/projects/project/locations/ locationhttpFilters/httpFilter Only filters that handle outbound connection and stream events may be specified. These filters work in conjunction with a default set of HTTP filters that may already be configured by Traffic Director. Traffic Director will determine the final location of these filters within xDS configuration based on the name of the HTTP filter. If Traffic Director positions multiple filters at the same location, those filters will be in the same order as specified in this list. httpFilters only applies for loadbalancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED. See ForwardingRule for more details.
  /// [httpKeepAliveTimeoutSec] Specifies how long to keep a connection open, after completing a response, while there is no matching traffic (in seconds). If an HTTP keep-alive is not specified, a default value (610 seconds) will be used. For global external Application Load Balancers, the minimum allowed value is 5 seconds and the maximum allowed value is 1200 seconds. For classic Application Load Balancers, this option is not supported.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [proxyBind] This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [urlMap] URL to the UrlMap resource that defines the mapping from URL to the BackendService.
  RegionTargetHttpProxyComputeBetaArgs({
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? httpFilters,
    pulumi.Output<int>? httpKeepAliveTimeoutSec,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? proxyBind,
    required pulumi.Output<String> region,
    pulumi.Output<String>? requestId,
    pulumi.Output<String>? urlMap,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      httpFilters = pulumi.Input.asOptionalInput<List<String>>(httpFilters),
      httpKeepAliveTimeoutSec = pulumi.Input.asOptionalInput<int>(httpKeepAliveTimeoutSec),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxyBind = pulumi.Input.asOptionalInput<bool>(proxyBind),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      urlMap = pulumi.Input.asOptionalInput<String>(urlMap);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'httpFilters': ?httpFilters,
      'httpKeepAliveTimeoutSec': ?httpKeepAliveTimeoutSec,
      'name': ?name,
      'project': ?project,
      'proxyBind': ?proxyBind,
      'region': region,
      'requestId': ?requestId,
      'urlMap': ?urlMap,
    };
  }

  factory RegionTargetHttpProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return RegionTargetHttpProxyComputeBetaArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      httpFilters: map['httpFilters'] == null ? null : pulumi.Output.create<List<String>>((map['httpFilters'] as List).cast<String>()),
      httpKeepAliveTimeoutSec: map['httpKeepAliveTimeoutSec'] == null ? null : pulumi.Output.create<int>(map['httpKeepAliveTimeoutSec'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxyBind: map['proxyBind'] == null ? null : pulumi.Output.create<bool>(map['proxyBind'] as bool),
      region: pulumi.Output.create<String>(map['region'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      urlMap: map['urlMap'] == null ? null : pulumi.Output.create<String>(map['urlMap'] as String),
    );
  }
}

