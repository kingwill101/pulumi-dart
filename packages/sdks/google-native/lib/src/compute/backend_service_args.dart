// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend.dart';
import 'backend_service_cdn_policy.dart';
import 'backend_service_compression_mode.dart';
import 'backend_service_connection_tracking_policy.dart';
import 'backend_service_failover_policy.dart';
import 'backend_service_iap.dart';
import 'backend_service_ip_address_selection_policy.dart';
import 'backend_service_load_balancing_scheme.dart';
import 'backend_service_locality_lb_policy.dart';
import 'backend_service_locality_load_balancing_policy_config.dart';
import 'backend_service_log_config.dart';
import 'backend_service_protocol.dart';
import 'backend_service_session_affinity.dart';
import 'backend_service_used_by.dart';
import 'backend_service_vpc_network_scope.dart';
import 'circuit_breakers.dart';
import 'connection_draining.dart';
import 'consistent_hash_load_balancer_settings.dart';
import 'duration.dart';
import 'outlier_detection.dart';
import 'security_settings.dart';
import 'subsetting.dart';

/// {@template pulumi_compute_alpha_backend_service_args_doc}
/// The set of arguments for BackendService.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_backend_service_args_doc}
class BackendServiceArgs {
  /// Lifetime of cookies in seconds. This setting is applicable to external and internal HTTP(S) load balancers and Traffic Director and requires GENERATED_COOKIE or HTTP_COOKIE session affinity. If set to 0, the cookie is non-persistent and lasts only until the end of the browser session (or equivalent). The maximum allowed value is two weeks (1,209,600). Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<int>? affinityCookieTtlSec;
  /// The list of backends that serve this BackendService.
  final pulumi.Input<List<Backend>>? backends;
  /// Cloud CDN configuration for this BackendService. Only available for specified load balancer types.
  final pulumi.Input<BackendServiceCdnPolicy>? cdnPolicy;
  final pulumi.Input<CircuitBreakers>? circuitBreakers;
  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  final pulumi.Input<BackendServiceCompressionMode>? compressionMode;
  final pulumi.Input<ConnectionDraining>? connectionDraining;
  /// Connection Tracking configuration for this BackendService. Connection tracking policy settings are only available for Network Load Balancing and Internal TCP/UDP Load Balancing.
  final pulumi.Input<BackendServiceConnectionTrackingPolicy>? connectionTrackingPolicy;
  /// Consistent Hash-based load balancing can be used to provide soft session affinity based on HTTP headers, cookies or other properties. This load balancing policy is applicable only for HTTP connections. The affinity to a particular destination host will be lost when one or more hosts are added/removed from the destination service. This field specifies parameters that control consistent hashing. This field is only applicable when localityLbPolicy is set to MAGLEV or RING_HASH. This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<ConsistentHashLoadBalancerSettings>? consistentHash;
  /// Headers that the load balancer adds to proxied requests. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  final pulumi.Input<List<String>>? customRequestHeaders;
  /// Headers that the load balancer adds to proxied responses. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  final pulumi.Input<List<String>>? customResponseHeaders;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// If true, enables Cloud CDN for the backend service of an external HTTP(S) load balancer.
  final pulumi.Input<bool>? enableCDN;
  /// Requires at least one backend instance group to be defined as a backup (failover) backend. For load balancers that have configurable failover: [Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal/failover-overview) and [external TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-failover-overview).
  final pulumi.Input<BackendServiceFailoverPolicy>? failoverPolicy;
  /// The list of URLs to the healthChecks, httpHealthChecks (legacy), or httpsHealthChecks (legacy) resource for health checking this backend service. Not all backend services support legacy health checks. See Load balancer guide. Currently, at most one health check can be specified for each backend service. Backend services with instance group or zonal NEG backends must have a health check. Backend services with internet or serverless NEG backends must not have a health check.
  final pulumi.Input<List<String>>? healthChecks;
  /// The configurations for Identity-Aware Proxy on this resource. Not available for Internal TCP/UDP Load Balancing and Network Load Balancing.
  final pulumi.Input<BackendServiceIAP>? iap;
  /// Specifies a preference for traffic sent from the proxy to the backend (or from the client to the backend for proxyless gRPC). The possible values are: - IPV4_ONLY: Only send IPv4 traffic to the backends of the backend service (Instance Group, Managed Instance Group, Network Endpoint Group), regardless of traffic from the client to the proxy. Only IPv4 health checks are used to check the health of the backends. This is the default setting. - PREFER_IPV6: Prioritize the connection to the endpoint's IPv6 address over its IPv4 address (provided there is a healthy IPv6 address). - IPV6_ONLY: Only send IPv6 traffic to the backends of the backend service (Instance Group, Managed Instance Group, Network Endpoint Group), regardless of traffic from the client to the proxy. Only IPv6 health checks are used to check the health of the backends. This field is applicable to either: - Advanced Global External HTTPS Load Balancing (load balancing scheme EXTERNAL_MANAGED), - Regional External HTTPS Load Balancing, - Internal TCP Proxy (load balancing scheme INTERNAL_MANAGED), - Regional Internal HTTPS Load Balancing (load balancing scheme INTERNAL_MANAGED), - Traffic Director with Envoy proxies and proxyless gRPC (load balancing scheme INTERNAL_SELF_MANAGED).
  final pulumi.Input<BackendServiceIpAddressSelectionPolicy>? ipAddressSelectionPolicy;
  /// Specifies the load balancer type. A backend service created for one type of load balancer cannot be used with another. For more information, refer to Choosing a load balancer.
  final pulumi.Input<BackendServiceLoadBalancingScheme>? loadBalancingScheme;
  /// A list of locality load-balancing policies to be used in order of preference. When you use localityLbPolicies, you must set at least one value for either the localityLbPolicies[].policy or the localityLbPolicies[].customPolicy field. localityLbPolicies overrides any value set in the localityLbPolicy field. For an example of how to use this field, see Define a list of preferred policies. Caution: This field and its children are intended for use in a service mesh that includes gRPC clients only. Envoy proxies can't use backend services that have this configuration.
  final pulumi.Input<List<BackendServiceLocalityLoadBalancingPolicyConfig>>? localityLbPolicies;
  /// The load balancing algorithm used within the scope of the locality. The possible values are: - ROUND_ROBIN: This is a simple policy in which each healthy backend is selected in round robin order. This is the default. - LEAST_REQUEST: An O(1) algorithm which selects two random healthy hosts and picks the host which has fewer active requests. - RING_HASH: The ring/modulo hash load balancer implements consistent hashing to backends. The algorithm has the property that the addition/removal of a host from a set of N hosts only affects 1/N of the requests. - RANDOM: The load balancer selects a random healthy host. - ORIGINAL_DESTINATION: Backend host is selected based on the client connection metadata, i.e., connections are opened to the same address as the destination address of the incoming connection before the connection was redirected to the load balancer. - MAGLEV: used as a drop in replacement for the ring hash load balancer. Maglev is not as stable as ring hash but has faster table lookup build times and host selection times. For more information about Maglev, see https://ai.google/research/pubs/pub44824 This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED, INTERNAL_MANAGED, or EXTERNAL_MANAGED. If sessionAffinity is not NONE, and this field is not set to MAGLEV or RING_HASH, session affinity settings will not take effect. Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<BackendServiceLocalityLbPolicy>? localityLbPolicy;
  /// This field denotes the logging options for the load balancer traffic served by this backend service. If logging is enabled, logs will be exported to Stackdriver.
  final pulumi.Input<BackendServiceLogConfig>? logConfig;
  /// Specifies the default maximum duration (timeout) for streams to this service. Duration is computed from the beginning of the stream until the response has been completely processed, including all retries. A stream that does not complete in this duration is closed. If not specified, there will be no timeout limit, i.e. the maximum duration is infinite. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. This field is only allowed when the loadBalancingScheme of the backend service is INTERNAL_SELF_MANAGED.
  final pulumi.Input<Duration>? maxStreamDuration;
  /// Deployment metadata associated with the resource to be set by a GKE hub controller and read by the backend RCTH
  final pulumi.Input<Map<String, String>>? metadatas;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The URL of the network to which this backend service belongs. This field can only be specified when the load balancing scheme is set to INTERNAL.
  final pulumi.Input<String>? network;
  /// Settings controlling the ejection of unhealthy backend endpoints from the load balancing pool of each individual proxy instance that processes the traffic for the given backend service. If not set, this feature is considered disabled. Results of the outlier detection algorithm (ejection of endpoints from the load balancing pool and returning them back to the pool) are executed independently by each proxy instance of the load balancer. In most cases, more than one proxy instance handles the traffic received by a backend service. Thus, it is possible that an unhealthy endpoint is detected and ejected by only some of the proxies, and while this happens, other proxies may continue to send requests to the same unhealthy endpoint until they detect and eject the unhealthy endpoint. Applicable backend endpoints can be: - VM instances in an Instance Group - Endpoints in a Zonal NEG (GCE_VM_IP, GCE_VM_IP_PORT) - Endpoints in a Hybrid Connectivity NEG (NON_GCP_PRIVATE_IP_PORT) - Serverless NEGs, that resolve to Cloud Run, App Engine, or Cloud Functions Services - Private Service Connect NEGs, that resolve to Google-managed regional API endpoints or managed services published using Private Service Connect Applicable backend service types can be: - A global backend service with the loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL_MANAGED. - A regional backend service with the serviceProtocol set to HTTP, HTTPS, or HTTP2, and loadBalancingScheme set to INTERNAL_MANAGED or EXTERNAL_MANAGED. Not supported for Serverless NEGs. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<OutlierDetection>? outlierDetection;
  /// Deprecated in favor of portName. The TCP port to connect on the backend. The default value is 80. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port.
  final pulumi.Input<int>? port;
  /// A named port on a backend instance group representing the port for communication to the backend VMs in that group. The named port must be [defined on each backend instance group](https://cloud.google.com/load-balancing/docs/backend-service#named_ports). This parameter has no meaning if the backends are NEGs. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port_name.
  final pulumi.Input<String>? portName;
  final pulumi.Input<String>? project;
  /// The protocol this BackendService uses to communicate with backends. Possible values are HTTP, HTTPS, HTTP2, TCP, SSL, UDP or GRPC. depending on the chosen load balancer or Traffic Director configuration. Refer to the documentation for the load balancers or for Traffic Director for more information. Must be set to GRPC when the backend service is referenced by a URL map that is bound to target gRPC proxy.
  final pulumi.Input<BackendServiceProtocol>? protocol;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// This field specifies the security settings that apply to this backend service. This field is applicable to a global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<SecuritySettings>? securitySettings;
  /// URLs of networkservices.ServiceBinding resources. Can only be set if load balancing scheme is INTERNAL_SELF_MANAGED. If set, lists of backends and health checks must be both empty.
  final pulumi.Input<List<String>>? serviceBindings;
  /// URL to networkservices.ServiceLbPolicy resource. Can only be set if load balancing scheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED or INTERNAL_SELF_MANAGED and the scope is global.
  final pulumi.Input<String>? serviceLbPolicy;
  /// Type of session affinity to use. The default is NONE. Only NONE and HEADER_FIELD are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. For more details, see: [Session Affinity](https://cloud.google.com/load-balancing/docs/backend-service#session_affinity).
  final pulumi.Input<BackendServiceSessionAffinity>? sessionAffinity;
  final pulumi.Input<Subsetting>? subsetting;
  /// The backend service timeout has a different meaning depending on the type of load balancer. For more information see, Backend service settings. The default is 30 seconds. The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. Instead, use maxStreamDuration.
  final pulumi.Input<int>? timeoutSec;
  final pulumi.Input<List<BackendServiceUsedBy>>? usedBy;
  /// The network scope of the backends that can be added to the backend service. This field can be either GLOBAL_VPC_NETWORK or REGIONAL_VPC_NETWORK. A backend service with the VPC scope set to GLOBAL_VPC_NETWORK is only allowed to have backends in global VPC networks. When the VPC scope is set to REGIONAL_VPC_NETWORK the backend service is only allowed to have backends in regional networks in the same scope as the backend service. Note: if not specified then GLOBAL_VPC_NETWORK will be used.
  final pulumi.Input<BackendServiceVpcNetworkScope>? vpcNetworkScope;

  /// Creates a new [BackendServiceArgs].
  /// [affinityCookieTtlSec] Lifetime of cookies in seconds. This setting is applicable to external and internal HTTP(S) load balancers and Traffic Director and requires GENERATED_COOKIE or HTTP_COOKIE session affinity. If set to 0, the cookie is non-persistent and lasts only until the end of the browser session (or equivalent). The maximum allowed value is two weeks (1,209,600). Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  /// [backends] The list of backends that serve this BackendService.
  /// [cdnPolicy] Cloud CDN configuration for this BackendService. Only available for specified load balancer types.
  /// [circuitBreakers] Optional.
  /// [compressionMode] Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// [connectionDraining] Optional.
  /// [connectionTrackingPolicy] Connection Tracking configuration for this BackendService. Connection tracking policy settings are only available for Network Load Balancing and Internal TCP/UDP Load Balancing.
  /// [consistentHash] Consistent Hash-based load balancing can be used to provide soft session affinity based on HTTP headers, cookies or other properties. This load balancing policy is applicable only for HTTP connections. The affinity to a particular destination host will be lost when one or more hosts are added/removed from the destination service. This field specifies parameters that control consistent hashing. This field is only applicable when localityLbPolicy is set to MAGLEV or RING_HASH. This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  /// [customRequestHeaders] Headers that the load balancer adds to proxied requests. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  /// [customResponseHeaders] Headers that the load balancer adds to proxied responses. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [enableCDN] If true, enables Cloud CDN for the backend service of an external HTTP(S) load balancer.
  /// [failoverPolicy] Requires at least one backend instance group to be defined as a backup (failover) backend. For load balancers that have configurable failover: [Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal/failover-overview) and [external TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-failover-overview).
  /// [healthChecks] The list of URLs to the healthChecks, httpHealthChecks (legacy), or httpsHealthChecks (legacy) resource for health checking this backend service. Not all backend services support legacy health checks. See Load balancer guide. Currently, at most one health check can be specified for each backend service. Backend services with instance group or zonal NEG backends must have a health check. Backend services with internet or serverless NEG backends must not have a health check.
  /// [iap] The configurations for Identity-Aware Proxy on this resource. Not available for Internal TCP/UDP Load Balancing and Network Load Balancing.
  /// [ipAddressSelectionPolicy] Specifies a preference for traffic sent from the proxy to the backend (or from the client to the backend for proxyless gRPC). The possible values are: - IPV4_ONLY: Only send IPv4 traffic to the backends of the backend service (Instance Group, Managed Instance Group, Network Endpoint Group), regardless of traffic from the client to the proxy. Only IPv4 health checks are used to check the health of the backends. This is the default setting. - PREFER_IPV6: Prioritize the connection to the endpoint's IPv6 address over its IPv4 address (provided there is a healthy IPv6 address). - IPV6_ONLY: Only send IPv6 traffic to the backends of the backend service (Instance Group, Managed Instance Group, Network Endpoint Group), regardless of traffic from the client to the proxy. Only IPv6 health checks are used to check the health of the backends. This field is applicable to either: - Advanced Global External HTTPS Load Balancing (load balancing scheme EXTERNAL_MANAGED), - Regional External HTTPS Load Balancing, - Internal TCP Proxy (load balancing scheme INTERNAL_MANAGED), - Regional Internal HTTPS Load Balancing (load balancing scheme INTERNAL_MANAGED), - Traffic Director with Envoy proxies and proxyless gRPC (load balancing scheme INTERNAL_SELF_MANAGED).
  /// [loadBalancingScheme] Specifies the load balancer type. A backend service created for one type of load balancer cannot be used with another. For more information, refer to Choosing a load balancer.
  /// [localityLbPolicies] A list of locality load-balancing policies to be used in order of preference. When you use localityLbPolicies, you must set at least one value for either the localityLbPolicies[].policy or the localityLbPolicies[].customPolicy field. localityLbPolicies overrides any value set in the localityLbPolicy field. For an example of how to use this field, see Define a list of preferred policies. Caution: This field and its children are intended for use in a service mesh that includes gRPC clients only. Envoy proxies can't use backend services that have this configuration.
  /// [localityLbPolicy] The load balancing algorithm used within the scope of the locality. The possible values are: - ROUND_ROBIN: This is a simple policy in which each healthy backend is selected in round robin order. This is the default. - LEAST_REQUEST: An O(1) algorithm which selects two random healthy hosts and picks the host which has fewer active requests. - RING_HASH: The ring/modulo hash load balancer implements consistent hashing to backends. The algorithm has the property that the addition/removal of a host from a set of N hosts only affects 1/N of the requests. - RANDOM: The load balancer selects a random healthy host. - ORIGINAL_DESTINATION: Backend host is selected based on the client connection metadata, i.e., connections are opened to the same address as the destination address of the incoming connection before the connection was redirected to the load balancer. - MAGLEV: used as a drop in replacement for the ring hash load balancer. Maglev is not as stable as ring hash but has faster table lookup build times and host selection times. For more information about Maglev, see https://ai.google/research/pubs/pub44824 This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED, INTERNAL_MANAGED, or EXTERNAL_MANAGED. If sessionAffinity is not NONE, and this field is not set to MAGLEV or RING_HASH, session affinity settings will not take effect. Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  /// [logConfig] This field denotes the logging options for the load balancer traffic served by this backend service. If logging is enabled, logs will be exported to Stackdriver.
  /// [maxStreamDuration] Specifies the default maximum duration (timeout) for streams to this service. Duration is computed from the beginning of the stream until the response has been completely processed, including all retries. A stream that does not complete in this duration is closed. If not specified, there will be no timeout limit, i.e. the maximum duration is infinite. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. This field is only allowed when the loadBalancingScheme of the backend service is INTERNAL_SELF_MANAGED.
  /// [metadatas] Deployment metadata associated with the resource to be set by a GKE hub controller and read by the backend RCTH
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the network to which this backend service belongs. This field can only be specified when the load balancing scheme is set to INTERNAL.
  /// [outlierDetection] Settings controlling the ejection of unhealthy backend endpoints from the load balancing pool of each individual proxy instance that processes the traffic for the given backend service. If not set, this feature is considered disabled. Results of the outlier detection algorithm (ejection of endpoints from the load balancing pool and returning them back to the pool) are executed independently by each proxy instance of the load balancer. In most cases, more than one proxy instance handles the traffic received by a backend service. Thus, it is possible that an unhealthy endpoint is detected and ejected by only some of the proxies, and while this happens, other proxies may continue to send requests to the same unhealthy endpoint until they detect and eject the unhealthy endpoint. Applicable backend endpoints can be: - VM instances in an Instance Group - Endpoints in a Zonal NEG (GCE_VM_IP, GCE_VM_IP_PORT) - Endpoints in a Hybrid Connectivity NEG (NON_GCP_PRIVATE_IP_PORT) - Serverless NEGs, that resolve to Cloud Run, App Engine, or Cloud Functions Services - Private Service Connect NEGs, that resolve to Google-managed regional API endpoints or managed services published using Private Service Connect Applicable backend service types can be: - A global backend service with the loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL_MANAGED. - A regional backend service with the serviceProtocol set to HTTP, HTTPS, or HTTP2, and loadBalancingScheme set to INTERNAL_MANAGED or EXTERNAL_MANAGED. Not supported for Serverless NEGs. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  /// [port] Deprecated in favor of portName. The TCP port to connect on the backend. The default value is 80. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port.
  /// [portName] A named port on a backend instance group representing the port for communication to the backend VMs in that group. The named port must be [defined on each backend instance group](https://cloud.google.com/load-balancing/docs/backend-service#named_ports). This parameter has no meaning if the backends are NEGs. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port_name.
  /// [project] Optional.
  /// [protocol] The protocol this BackendService uses to communicate with backends. Possible values are HTTP, HTTPS, HTTP2, TCP, SSL, UDP or GRPC. depending on the chosen load balancer or Traffic Director configuration. Refer to the documentation for the load balancers or for Traffic Director for more information. Must be set to GRPC when the backend service is referenced by a URL map that is bound to target gRPC proxy.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [securitySettings] This field specifies the security settings that apply to this backend service. This field is applicable to a global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  /// [serviceBindings] URLs of networkservices.ServiceBinding resources. Can only be set if load balancing scheme is INTERNAL_SELF_MANAGED. If set, lists of backends and health checks must be both empty.
  /// [serviceLbPolicy] URL to networkservices.ServiceLbPolicy resource. Can only be set if load balancing scheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED or INTERNAL_SELF_MANAGED and the scope is global.
  /// [sessionAffinity] Type of session affinity to use. The default is NONE. Only NONE and HEADER_FIELD are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. For more details, see: [Session Affinity](https://cloud.google.com/load-balancing/docs/backend-service#session_affinity).
  /// [subsetting] Optional.
  /// [timeoutSec] The backend service timeout has a different meaning depending on the type of load balancer. For more information see, Backend service settings. The default is 30 seconds. The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. Instead, use maxStreamDuration.
  /// [usedBy] Optional.
  /// [vpcNetworkScope] The network scope of the backends that can be added to the backend service. This field can be either GLOBAL_VPC_NETWORK or REGIONAL_VPC_NETWORK. A backend service with the VPC scope set to GLOBAL_VPC_NETWORK is only allowed to have backends in global VPC networks. When the VPC scope is set to REGIONAL_VPC_NETWORK the backend service is only allowed to have backends in regional networks in the same scope as the backend service. Note: if not specified then GLOBAL_VPC_NETWORK will be used.
  const BackendServiceArgs({
    this.affinityCookieTtlSec,
    this.backends,
    this.cdnPolicy,
    this.circuitBreakers,
    this.compressionMode,
    this.connectionDraining,
    this.connectionTrackingPolicy,
    this.consistentHash,
    this.customRequestHeaders,
    this.customResponseHeaders,
    this.description,
    this.enableCDN,
    this.failoverPolicy,
    this.healthChecks,
    this.iap,
    this.ipAddressSelectionPolicy,
    this.loadBalancingScheme,
    this.localityLbPolicies,
    this.localityLbPolicy,
    this.logConfig,
    this.maxStreamDuration,
    this.metadatas,
    this.name,
    this.network,
    this.outlierDetection,
    this.port,
    this.portName,
    this.project,
    this.protocol,
    this.requestId,
    this.securitySettings,
    this.serviceBindings,
    this.serviceLbPolicy,
    this.sessionAffinity,
    this.subsetting,
    this.timeoutSec,
    this.usedBy,
    this.vpcNetworkScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityCookieTtlSec': ?affinityCookieTtlSec,
      'backends': ?pulumi.Input.mapOptionalInputValue<List<Backend>, List<Map<String, dynamic>>>(backends, (value) => pulumi.Input.encodeList<Backend, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cdnPolicy': ?pulumi.Input.mapOptionalInputValue<BackendServiceCdnPolicy, Map<String, dynamic>>(cdnPolicy, (value) => value.toMap()),
      'circuitBreakers': ?pulumi.Input.mapOptionalInputValue<CircuitBreakers, Map<String, dynamic>>(circuitBreakers, (value) => value.toMap()),
      'compressionMode': ?pulumi.Input.mapOptionalInputValue<BackendServiceCompressionMode, String>(compressionMode, (value) => value.wireValue),
      'connectionDraining': ?pulumi.Input.mapOptionalInputValue<ConnectionDraining, Map<String, dynamic>>(connectionDraining, (value) => value.toMap()),
      'connectionTrackingPolicy': ?pulumi.Input.mapOptionalInputValue<BackendServiceConnectionTrackingPolicy, Map<String, dynamic>>(connectionTrackingPolicy, (value) => value.toMap()),
      'consistentHash': ?pulumi.Input.mapOptionalInputValue<ConsistentHashLoadBalancerSettings, Map<String, dynamic>>(consistentHash, (value) => value.toMap()),
      'customRequestHeaders': ?customRequestHeaders,
      'customResponseHeaders': ?customResponseHeaders,
      'description': ?description,
      'enableCDN': ?enableCDN,
      'failoverPolicy': ?pulumi.Input.mapOptionalInputValue<BackendServiceFailoverPolicy, Map<String, dynamic>>(failoverPolicy, (value) => value.toMap()),
      'healthChecks': ?healthChecks,
      'iap': ?pulumi.Input.mapOptionalInputValue<BackendServiceIAP, Map<String, dynamic>>(iap, (value) => value.toMap()),
      'ipAddressSelectionPolicy': ?pulumi.Input.mapOptionalInputValue<BackendServiceIpAddressSelectionPolicy, String>(ipAddressSelectionPolicy, (value) => value.wireValue),
      'loadBalancingScheme': ?pulumi.Input.mapOptionalInputValue<BackendServiceLoadBalancingScheme, String>(loadBalancingScheme, (value) => value.wireValue),
      'localityLbPolicies': ?pulumi.Input.mapOptionalInputValue<List<BackendServiceLocalityLoadBalancingPolicyConfig>, List<Map<String, dynamic>>>(localityLbPolicies, (value) => pulumi.Input.encodeList<BackendServiceLocalityLoadBalancingPolicyConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localityLbPolicy': ?pulumi.Input.mapOptionalInputValue<BackendServiceLocalityLbPolicy, String>(localityLbPolicy, (value) => value.wireValue),
      'logConfig': ?pulumi.Input.mapOptionalInputValue<BackendServiceLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'maxStreamDuration': ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(maxStreamDuration, (value) => value.toMap()),
      'metadatas': ?metadatas,
      'name': ?name,
      'network': ?network,
      'outlierDetection': ?pulumi.Input.mapOptionalInputValue<OutlierDetection, Map<String, dynamic>>(outlierDetection, (value) => value.toMap()),
      'port': ?port,
      'portName': ?portName,
      'project': ?project,
      'protocol': ?pulumi.Input.mapOptionalInputValue<BackendServiceProtocol, String>(protocol, (value) => value.wireValue),
      'requestId': ?requestId,
      'securitySettings': ?pulumi.Input.mapOptionalInputValue<SecuritySettings, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'serviceBindings': ?serviceBindings,
      'serviceLbPolicy': ?serviceLbPolicy,
      'sessionAffinity': ?pulumi.Input.mapOptionalInputValue<BackendServiceSessionAffinity, String>(sessionAffinity, (value) => value.wireValue),
      'subsetting': ?pulumi.Input.mapOptionalInputValue<Subsetting, Map<String, dynamic>>(subsetting, (value) => value.toMap()),
      'timeoutSec': ?timeoutSec,
      'usedBy': ?pulumi.Input.mapOptionalInputValue<List<BackendServiceUsedBy>, List<Map<String, dynamic>>>(usedBy, (value) => pulumi.Input.encodeList<BackendServiceUsedBy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcNetworkScope': ?pulumi.Input.mapOptionalInputValue<BackendServiceVpcNetworkScope, String>(vpcNetworkScope, (value) => value.wireValue),
    };
  }

  factory BackendServiceArgs.fromMap(Map<String, dynamic> map) {
    return BackendServiceArgs(
      affinityCookieTtlSec: (() { final guardedValue = map['affinityCookieTtlSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backends: (() { final guardedValue = map['backends']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Backend>(guardedValue, (value) => Backend.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cdnPolicy: (() { final guardedValue = map['cdnPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceCdnPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      circuitBreakers: (() { final guardedValue = map['circuitBreakers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CircuitBreakers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compressionMode: (() { final guardedValue = map['compressionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceCompressionMode.fromValue(guardedValue as String)); })(),
      connectionDraining: (() { final guardedValue = map['connectionDraining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionDraining.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionTrackingPolicy: (() { final guardedValue = map['connectionTrackingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceConnectionTrackingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      consistentHash: (() { final guardedValue = map['consistentHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConsistentHashLoadBalancerSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customRequestHeaders: (() { final guardedValue = map['customRequestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      customResponseHeaders: (() { final guardedValue = map['customResponseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableCDN: (() { final guardedValue = map['enableCDN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failoverPolicy: (() { final guardedValue = map['failoverPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceFailoverPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      healthChecks: (() { final guardedValue = map['healthChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      iap: (() { final guardedValue = map['iap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceIAP.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipAddressSelectionPolicy: (() { final guardedValue = map['ipAddressSelectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceIpAddressSelectionPolicy.fromValue(guardedValue as String)); })(),
      loadBalancingScheme: (() { final guardedValue = map['loadBalancingScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceLoadBalancingScheme.fromValue(guardedValue as String)); })(),
      localityLbPolicies: (() { final guardedValue = map['localityLbPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendServiceLocalityLoadBalancingPolicyConfig>(guardedValue, (value) => BackendServiceLocalityLoadBalancingPolicyConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localityLbPolicy: (() { final guardedValue = map['localityLbPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceLocalityLbPolicy.fromValue(guardedValue as String)); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxStreamDuration: (() { final guardedValue = map['maxStreamDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Duration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadatas: (() { final guardedValue = map['metadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outlierDetection: (() { final guardedValue = map['outlierDetection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OutlierDetection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      portName: (() { final guardedValue = map['portName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceProtocol.fromValue(guardedValue as String)); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securitySettings: (() { final guardedValue = map['securitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecuritySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceBindings: (() { final guardedValue = map['serviceBindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceLbPolicy: (() { final guardedValue = map['serviceLbPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionAffinity: (() { final guardedValue = map['sessionAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceSessionAffinity.fromValue(guardedValue as String)); })(),
      subsetting: (() { final guardedValue = map['subsetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Subsetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutSec: (() { final guardedValue = map['timeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      usedBy: (() { final guardedValue = map['usedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendServiceUsedBy>(guardedValue, (value) => BackendServiceUsedBy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcNetworkScope: (() { final guardedValue = map['vpcNetworkScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceVpcNetworkScope.fromValue(guardedValue as String)); })(),
    );
  }
}
