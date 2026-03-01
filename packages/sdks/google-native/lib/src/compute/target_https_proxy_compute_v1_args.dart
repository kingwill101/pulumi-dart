// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_https_proxy_quic_override_compute_v1.dart';

/// {@template pulumi_compute_v1_target_https_proxy_compute_v1_args_doc}
/// The set of arguments for TargetHttpsProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_target_https_proxy_compute_v1_args_doc}
class TargetHttpsProxyComputeV1Args {
  /// Optional. A URL referring to a networksecurity.AuthorizationPolicy resource that describes how the proxy should authorize inbound traffic. If left blank, access will not be restricted by an authorization policy. Refer to the AuthorizationPolicy resource for additional details. authorizationPolicy only applies to a global TargetHttpsProxy attached to globalForwardingRules with the loadBalancingScheme set to INTERNAL_SELF_MANAGED. Note: This field currently has no impact.
  final pulumi.Input<String>? authorizationPolicy;
  /// URL of a certificate map that identifies a certificate map associated with the given target proxy. This field can only be set for global target proxies. If set, sslCertificates will be ignored. Accepted format is //certificatemanager.googleapis.com/projects/{project }/locations/{location}/certificateMaps/{resourceName}.
  final pulumi.Input<String>? certificateMap;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Specifies how long to keep a connection open, after completing a response, while there is no matching traffic (in seconds). If an HTTP keep-alive is not specified, a default value (610 seconds) will be used. For global external Application Load Balancers, the minimum allowed value is 5 seconds and the maximum allowed value is 1200 seconds. For classic Application Load Balancers, this option is not supported.
  final pulumi.Input<int>? httpKeepAliveTimeoutSec;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  final pulumi.Input<bool>? proxyBind;
  /// Specifies the QUIC override policy for this TargetHttpsProxy resource. This setting determines whether the load balancer attempts to negotiate QUIC with clients. You can specify NONE, ENABLE, or DISABLE. - When quic-override is set to NONE, Google manages whether QUIC is used. - When quic-override is set to ENABLE, the load balancer uses QUIC when possible. - When quic-override is set to DISABLE, the load balancer doesn't use QUIC. - If the quic-override flag is not specified, NONE is implied.
  final pulumi.Input<TargetHttpsProxyQuicOverrideComputeV1>? quicOverride;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Optional. A URL referring to a networksecurity.ServerTlsPolicy resource that describes how the proxy should authenticate inbound traffic. serverTlsPolicy only applies to a global TargetHttpsProxy attached to globalForwardingRules with the loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL or EXTERNAL_MANAGED. For details which ServerTlsPolicy resources are accepted with INTERNAL_SELF_MANAGED and which with EXTERNAL, EXTERNAL_MANAGED loadBalancingScheme consult ServerTlsPolicy documentation. If left blank, communications are not encrypted.
  final pulumi.Input<String>? serverTlsPolicy;
  /// URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer. At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<List<String>>? sslCertificates;
  /// URL of SslPolicy resource that will be associated with the TargetHttpsProxy resource. If not set, the TargetHttpsProxy resource has no SSL policy configured.
  final pulumi.Input<String>? sslPolicy;
  /// A fully-qualified or valid partial URL to the UrlMap resource that defines the mapping from URL to the BackendService. For example, the following are all valid URLs for specifying a URL map: - https://www.googleapis.compute/v1/projects/project/global/urlMaps/ url-map - projects/project/global/urlMaps/url-map - global/urlMaps/url-map
  final pulumi.Input<String>? urlMap;

  /// Creates a new [TargetHttpsProxyComputeV1Args].
  /// [authorizationPolicy] Optional. A URL referring to a networksecurity.AuthorizationPolicy resource that describes how the proxy should authorize inbound traffic. If left blank, access will not be restricted by an authorization policy. Refer to the AuthorizationPolicy resource for additional details. authorizationPolicy only applies to a global TargetHttpsProxy attached to globalForwardingRules with the loadBalancingScheme set to INTERNAL_SELF_MANAGED. Note: This field currently has no impact.
  /// [certificateMap] URL of a certificate map that identifies a certificate map associated with the given target proxy. This field can only be set for global target proxies. If set, sslCertificates will be ignored. Accepted format is //certificatemanager.googleapis.com/projects/{project }/locations/{location}/certificateMaps/{resourceName}.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [httpKeepAliveTimeoutSec] Specifies how long to keep a connection open, after completing a response, while there is no matching traffic (in seconds). If an HTTP keep-alive is not specified, a default value (610 seconds) will be used. For global external Application Load Balancers, the minimum allowed value is 5 seconds and the maximum allowed value is 1200 seconds. For classic Application Load Balancers, this option is not supported.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [proxyBind] This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  /// [quicOverride] Specifies the QUIC override policy for this TargetHttpsProxy resource. This setting determines whether the load balancer attempts to negotiate QUIC with clients. You can specify NONE, ENABLE, or DISABLE. - When quic-override is set to NONE, Google manages whether QUIC is used. - When quic-override is set to ENABLE, the load balancer uses QUIC when possible. - When quic-override is set to DISABLE, the load balancer doesn't use QUIC. - If the quic-override flag is not specified, NONE is implied.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [serverTlsPolicy] Optional. A URL referring to a networksecurity.ServerTlsPolicy resource that describes how the proxy should authenticate inbound traffic. serverTlsPolicy only applies to a global TargetHttpsProxy attached to globalForwardingRules with the loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL or EXTERNAL_MANAGED. For details which ServerTlsPolicy resources are accepted with INTERNAL_SELF_MANAGED and which with EXTERNAL, EXTERNAL_MANAGED loadBalancingScheme consult ServerTlsPolicy documentation. If left blank, communications are not encrypted.
  /// [sslCertificates] URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer. At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  /// [sslPolicy] URL of SslPolicy resource that will be associated with the TargetHttpsProxy resource. If not set, the TargetHttpsProxy resource has no SSL policy configured.
  /// [urlMap] A fully-qualified or valid partial URL to the UrlMap resource that defines the mapping from URL to the BackendService. For example, the following are all valid URLs for specifying a URL map: - https://www.googleapis.compute/v1/projects/project/global/urlMaps/ url-map - projects/project/global/urlMaps/url-map - global/urlMaps/url-map
  TargetHttpsProxyComputeV1Args({
    pulumi.Output<String>? authorizationPolicy,
    pulumi.Output<String>? certificateMap,
    pulumi.Output<String>? description,
    pulumi.Output<int>? httpKeepAliveTimeoutSec,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? proxyBind,
    pulumi.Output<TargetHttpsProxyQuicOverrideComputeV1>? quicOverride,
    pulumi.Output<String>? requestId,
    pulumi.Output<String>? serverTlsPolicy,
    pulumi.Output<List<String>>? sslCertificates,
    pulumi.Output<String>? sslPolicy,
    pulumi.Output<String>? urlMap,
  }) :
      authorizationPolicy = pulumi.Input.asOptionalInput<String>(authorizationPolicy),
      certificateMap = pulumi.Input.asOptionalInput<String>(certificateMap),
      description = pulumi.Input.asOptionalInput<String>(description),
      httpKeepAliveTimeoutSec = pulumi.Input.asOptionalInput<int>(httpKeepAliveTimeoutSec),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxyBind = pulumi.Input.asOptionalInput<bool>(proxyBind),
      quicOverride = pulumi.Input.asOptionalInput<TargetHttpsProxyQuicOverrideComputeV1>(quicOverride),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      serverTlsPolicy = pulumi.Input.asOptionalInput<String>(serverTlsPolicy),
      sslCertificates = pulumi.Input.asOptionalInput<List<String>>(sslCertificates),
      sslPolicy = pulumi.Input.asOptionalInput<String>(sslPolicy),
      urlMap = pulumi.Input.asOptionalInput<String>(urlMap);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicy': ?authorizationPolicy,
      'certificateMap': ?certificateMap,
      'description': ?description,
      'httpKeepAliveTimeoutSec': ?httpKeepAliveTimeoutSec,
      'name': ?name,
      'project': ?project,
      'proxyBind': ?proxyBind,
      'quicOverride': ?pulumi.Input.mapOptionalInputValue<TargetHttpsProxyQuicOverrideComputeV1, String>(quicOverride, (value) => value.value),
      'requestId': ?requestId,
      'serverTlsPolicy': ?serverTlsPolicy,
      'sslCertificates': ?sslCertificates,
      'sslPolicy': ?sslPolicy,
      'urlMap': ?urlMap,
    };
  }

  factory TargetHttpsProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return TargetHttpsProxyComputeV1Args(
      authorizationPolicy: map['authorizationPolicy'] == null ? null : pulumi.Output.create<String>(map['authorizationPolicy'] as String),
      certificateMap: map['certificateMap'] == null ? null : pulumi.Output.create<String>(map['certificateMap'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      httpKeepAliveTimeoutSec: map['httpKeepAliveTimeoutSec'] == null ? null : pulumi.Output.create<int>(map['httpKeepAliveTimeoutSec'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxyBind: map['proxyBind'] == null ? null : pulumi.Output.create<bool>(map['proxyBind'] as bool),
      quicOverride: map['quicOverride'] == null ? null : pulumi.Output.create<TargetHttpsProxyQuicOverrideComputeV1>(TargetHttpsProxyQuicOverrideComputeV1.fromValue(map['quicOverride'] as String)),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      serverTlsPolicy: map['serverTlsPolicy'] == null ? null : pulumi.Output.create<String>(map['serverTlsPolicy'] as String),
      sslCertificates: map['sslCertificates'] == null ? null : pulumi.Output.create<List<String>>((map['sslCertificates'] as List).cast<String>()),
      sslPolicy: map['sslPolicy'] == null ? null : pulumi.Output.create<String>(map['sslPolicy'] as String),
      urlMap: map['urlMap'] == null ? null : pulumi.Output.create<String>(map['urlMap'] as String),
    );
  }
}

