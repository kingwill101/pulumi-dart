// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_compute_v1.dart';
import 'backend_service_cdn_policy_compute_v1.dart';
import 'backend_service_compression_mode_compute_v1.dart';
import 'backend_service_connection_tracking_policy_compute_v1.dart';
import 'backend_service_failover_policy_compute_v1.dart';
import 'backend_service_iapcompute_v1.dart';
import 'backend_service_load_balancing_scheme_compute_v1.dart';
import 'backend_service_locality_lb_policy_compute_v1.dart';
import 'backend_service_locality_load_balancing_policy_config_compute_v1.dart';
import 'backend_service_log_config_compute_v1.dart';
import 'backend_service_protocol_compute_v1.dart';
import 'backend_service_session_affinity_compute_v1.dart';
import 'backend_service_used_by_compute_v1.dart';
import 'circuit_breakers_compute_v1.dart';
import 'connection_draining_compute_v1.dart';
import 'consistent_hash_load_balancer_settings_compute_v1.dart';
import 'duration_compute_v1.dart';
import 'outlier_detection_compute_v1.dart';
import 'security_settings_compute_v1.dart';
import 'subsetting_compute_v1.dart';

/// {@template pulumi_compute_v1_backend_service_compute_v1_args_doc}
/// The set of arguments for BackendService.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_backend_service_compute_v1_args_doc}
class BackendServiceComputeV1Args {
  /// Lifetime of cookies in seconds. This setting is applicable to external and internal HTTP(S) load balancers and Traffic Director and requires GENERATED_COOKIE or HTTP_COOKIE session affinity. If set to 0, the cookie is non-persistent and lasts only until the end of the browser session (or equivalent). The maximum allowed value is two weeks (1,209,600). Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<int>? affinityCookieTtlSec;
  /// The list of backends that serve this BackendService.
  final pulumi.Input<List<BackendComputeV1>>? backends;
  /// Cloud CDN configuration for this BackendService. Only available for specified load balancer types.
  final pulumi.Input<BackendServiceCdnPolicyComputeV1>? cdnPolicy;
  final pulumi.Input<CircuitBreakersComputeV1>? circuitBreakers;
  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  final pulumi.Input<BackendServiceCompressionModeComputeV1>? compressionMode;
  final pulumi.Input<ConnectionDrainingComputeV1>? connectionDraining;
  /// Connection Tracking configuration for this BackendService. Connection tracking policy settings are only available for Network Load Balancing and Internal TCP/UDP Load Balancing.
  final pulumi.Input<BackendServiceConnectionTrackingPolicyComputeV1>? connectionTrackingPolicy;
  /// Consistent Hash-based load balancing can be used to provide soft session affinity based on HTTP headers, cookies or other properties. This load balancing policy is applicable only for HTTP connections. The affinity to a particular destination host will be lost when one or more hosts are added/removed from the destination service. This field specifies parameters that control consistent hashing. This field is only applicable when localityLbPolicy is set to MAGLEV or RING_HASH. This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<ConsistentHashLoadBalancerSettingsComputeV1>? consistentHash;
  /// Headers that the load balancer adds to proxied requests. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  final pulumi.Input<List<String>>? customRequestHeaders;
  /// Headers that the load balancer adds to proxied responses. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  final pulumi.Input<List<String>>? customResponseHeaders;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// If true, enables Cloud CDN for the backend service of an external HTTP(S) load balancer.
  final pulumi.Input<bool>? enableCDN;
  /// Requires at least one backend instance group to be defined as a backup (failover) backend. For load balancers that have configurable failover: [Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal/failover-overview) and [external TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-failover-overview).
  final pulumi.Input<BackendServiceFailoverPolicyComputeV1>? failoverPolicy;
  /// The list of URLs to the healthChecks, httpHealthChecks (legacy), or httpsHealthChecks (legacy) resource for health checking this backend service. Not all backend services support legacy health checks. See Load balancer guide. Currently, at most one health check can be specified for each backend service. Backend services with instance group or zonal NEG backends must have a health check. Backend services with internet or serverless NEG backends must not have a health check.
  final pulumi.Input<List<String>>? healthChecks;
  /// The configurations for Identity-Aware Proxy on this resource. Not available for Internal TCP/UDP Load Balancing and Network Load Balancing.
  final pulumi.Input<BackendServiceIAPComputeV1>? iap;
  /// Specifies the load balancer type. A backend service created for one type of load balancer cannot be used with another. For more information, refer to Choosing a load balancer.
  final pulumi.Input<BackendServiceLoadBalancingSchemeComputeV1>? loadBalancingScheme;
  /// A list of locality load-balancing policies to be used in order of preference. When you use localityLbPolicies, you must set at least one value for either the localityLbPolicies[].policy or the localityLbPolicies[].customPolicy field. localityLbPolicies overrides any value set in the localityLbPolicy field. For an example of how to use this field, see Define a list of preferred policies. Caution: This field and its children are intended for use in a service mesh that includes gRPC clients only. Envoy proxies can't use backend services that have this configuration.
  final pulumi.Input<List<BackendServiceLocalityLoadBalancingPolicyConfigComputeV1>>? localityLbPolicies;
  /// The load balancing algorithm used within the scope of the locality. The possible values are: - ROUND_ROBIN: This is a simple policy in which each healthy backend is selected in round robin order. This is the default. - LEAST_REQUEST: An O(1) algorithm which selects two random healthy hosts and picks the host which has fewer active requests. - RING_HASH: The ring/modulo hash load balancer implements consistent hashing to backends. The algorithm has the property that the addition/removal of a host from a set of N hosts only affects 1/N of the requests. - RANDOM: The load balancer selects a random healthy host. - ORIGINAL_DESTINATION: Backend host is selected based on the client connection metadata, i.e., connections are opened to the same address as the destination address of the incoming connection before the connection was redirected to the load balancer. - MAGLEV: used as a drop in replacement for the ring hash load balancer. Maglev is not as stable as ring hash but has faster table lookup build times and host selection times. For more information about Maglev, see https://ai.google/research/pubs/pub44824 This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED, INTERNAL_MANAGED, or EXTERNAL_MANAGED. If sessionAffinity is not NONE, and this field is not set to MAGLEV or RING_HASH, session affinity settings will not take effect. Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<BackendServiceLocalityLbPolicyComputeV1>? localityLbPolicy;
  /// This field denotes the logging options for the load balancer traffic served by this backend service. If logging is enabled, logs will be exported to Stackdriver.
  final pulumi.Input<BackendServiceLogConfigComputeV1>? logConfig;
  /// Specifies the default maximum duration (timeout) for streams to this service. Duration is computed from the beginning of the stream until the response has been completely processed, including all retries. A stream that does not complete in this duration is closed. If not specified, there will be no timeout limit, i.e. the maximum duration is infinite. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. This field is only allowed when the loadBalancingScheme of the backend service is INTERNAL_SELF_MANAGED.
  final pulumi.Input<DurationComputeV1>? maxStreamDuration;
  /// Deployment metadata associated with the resource to be set by a GKE hub controller and read by the backend RCTH
  final pulumi.Input<Map<String, String>>? metadatas;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The URL of the network to which this backend service belongs. This field can only be specified when the load balancing scheme is set to INTERNAL.
  final pulumi.Input<String>? network;
  /// Settings controlling the ejection of unhealthy backend endpoints from the load balancing pool of each individual proxy instance that processes the traffic for the given backend service. If not set, this feature is considered disabled. Results of the outlier detection algorithm (ejection of endpoints from the load balancing pool and returning them back to the pool) are executed independently by each proxy instance of the load balancer. In most cases, more than one proxy instance handles the traffic received by a backend service. Thus, it is possible that an unhealthy endpoint is detected and ejected by only some of the proxies, and while this happens, other proxies may continue to send requests to the same unhealthy endpoint until they detect and eject the unhealthy endpoint. Applicable backend endpoints can be: - VM instances in an Instance Group - Endpoints in a Zonal NEG (GCE_VM_IP, GCE_VM_IP_PORT) - Endpoints in a Hybrid Connectivity NEG (NON_GCP_PRIVATE_IP_PORT) - Serverless NEGs, that resolve to Cloud Run, App Engine, or Cloud Functions Services - Private Service Connect NEGs, that resolve to Google-managed regional API endpoints or managed services published using Private Service Connect Applicable backend service types can be: - A global backend service with the loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL_MANAGED. - A regional backend service with the serviceProtocol set to HTTP, HTTPS, or HTTP2, and loadBalancingScheme set to INTERNAL_MANAGED or EXTERNAL_MANAGED. Not supported for Serverless NEGs. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<OutlierDetectionComputeV1>? outlierDetection;
  /// Deprecated in favor of portName. The TCP port to connect on the backend. The default value is 80. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port.
  final pulumi.Input<int>? port;
  /// A named port on a backend instance group representing the port for communication to the backend VMs in that group. The named port must be [defined on each backend instance group](https://cloud.google.com/load-balancing/docs/backend-service#named_ports). This parameter has no meaning if the backends are NEGs. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port_name.
  final pulumi.Input<String>? portName;
  final pulumi.Input<String>? project;
  /// The protocol this BackendService uses to communicate with backends. Possible values are HTTP, HTTPS, HTTP2, TCP, SSL, UDP or GRPC. depending on the chosen load balancer or Traffic Director configuration. Refer to the documentation for the load balancers or for Traffic Director for more information. Must be set to GRPC when the backend service is referenced by a URL map that is bound to target gRPC proxy.
  final pulumi.Input<BackendServiceProtocolComputeV1>? protocol;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// This field specifies the security settings that apply to this backend service. This field is applicable to a global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<SecuritySettingsComputeV1>? securitySettings;
  /// URLs of networkservices.ServiceBinding resources. Can only be set if load balancing scheme is INTERNAL_SELF_MANAGED. If set, lists of backends and health checks must be both empty.
  final pulumi.Input<List<String>>? serviceBindings;
  /// Type of session affinity to use. The default is NONE. Only NONE and HEADER_FIELD are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. For more details, see: [Session Affinity](https://cloud.google.com/load-balancing/docs/backend-service#session_affinity).
  final pulumi.Input<BackendServiceSessionAffinityComputeV1>? sessionAffinity;
  final pulumi.Input<SubsettingComputeV1>? subsetting;
  /// The backend service timeout has a different meaning depending on the type of load balancer. For more information see, Backend service settings. The default is 30 seconds. The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. Instead, use maxStreamDuration.
  final pulumi.Input<int>? timeoutSec;
  final pulumi.Input<List<BackendServiceUsedByComputeV1>>? usedBy;

  /// Creates a new [BackendServiceComputeV1Args].
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
  /// [sessionAffinity] Type of session affinity to use. The default is NONE. Only NONE and HEADER_FIELD are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. For more details, see: [Session Affinity](https://cloud.google.com/load-balancing/docs/backend-service#session_affinity).
  /// [subsetting] Optional.
  /// [timeoutSec] The backend service timeout has a different meaning depending on the type of load balancer. For more information see, Backend service settings. The default is 30 seconds. The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. Instead, use maxStreamDuration.
  /// [usedBy] Optional.
  BackendServiceComputeV1Args({
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
    this.sessionAffinity,
    this.subsetting,
    this.timeoutSec,
    this.usedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityCookieTtlSec': ?affinityCookieTtlSec,
      'backends': ?pulumi.Input.mapOptionalInputValue<List<BackendComputeV1>, List<Map<String, dynamic>>>(backends, (value) => pulumi.Input.encodeList<BackendComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cdnPolicy': ?pulumi.Input.mapOptionalInputValue<BackendServiceCdnPolicyComputeV1, Map<String, dynamic>>(cdnPolicy, (value) => value.toMap()),
      'circuitBreakers': ?pulumi.Input.mapOptionalInputValue<CircuitBreakersComputeV1, Map<String, dynamic>>(circuitBreakers, (value) => value.toMap()),
      'compressionMode': ?pulumi.Input.mapOptionalInputValue<BackendServiceCompressionModeComputeV1, String>(compressionMode, (value) => value.value),
      'connectionDraining': ?pulumi.Input.mapOptionalInputValue<ConnectionDrainingComputeV1, Map<String, dynamic>>(connectionDraining, (value) => value.toMap()),
      'connectionTrackingPolicy': ?pulumi.Input.mapOptionalInputValue<BackendServiceConnectionTrackingPolicyComputeV1, Map<String, dynamic>>(connectionTrackingPolicy, (value) => value.toMap()),
      'consistentHash': ?pulumi.Input.mapOptionalInputValue<ConsistentHashLoadBalancerSettingsComputeV1, Map<String, dynamic>>(consistentHash, (value) => value.toMap()),
      'customRequestHeaders': ?customRequestHeaders,
      'customResponseHeaders': ?customResponseHeaders,
      'description': ?description,
      'enableCDN': ?enableCDN,
      'failoverPolicy': ?pulumi.Input.mapOptionalInputValue<BackendServiceFailoverPolicyComputeV1, Map<String, dynamic>>(failoverPolicy, (value) => value.toMap()),
      'healthChecks': ?healthChecks,
      'iap': ?pulumi.Input.mapOptionalInputValue<BackendServiceIAPComputeV1, Map<String, dynamic>>(iap, (value) => value.toMap()),
      'loadBalancingScheme': ?pulumi.Input.mapOptionalInputValue<BackendServiceLoadBalancingSchemeComputeV1, String>(loadBalancingScheme, (value) => value.value),
      'localityLbPolicies': ?pulumi.Input.mapOptionalInputValue<List<BackendServiceLocalityLoadBalancingPolicyConfigComputeV1>, List<Map<String, dynamic>>>(localityLbPolicies, (value) => pulumi.Input.encodeList<BackendServiceLocalityLoadBalancingPolicyConfigComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localityLbPolicy': ?pulumi.Input.mapOptionalInputValue<BackendServiceLocalityLbPolicyComputeV1, String>(localityLbPolicy, (value) => value.value),
      'logConfig': ?pulumi.Input.mapOptionalInputValue<BackendServiceLogConfigComputeV1, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'maxStreamDuration': ?pulumi.Input.mapOptionalInputValue<DurationComputeV1, Map<String, dynamic>>(maxStreamDuration, (value) => value.toMap()),
      'metadatas': ?metadatas,
      'name': ?name,
      'network': ?network,
      'outlierDetection': ?pulumi.Input.mapOptionalInputValue<OutlierDetectionComputeV1, Map<String, dynamic>>(outlierDetection, (value) => value.toMap()),
      'port': ?port,
      'portName': ?portName,
      'project': ?project,
      'protocol': ?pulumi.Input.mapOptionalInputValue<BackendServiceProtocolComputeV1, String>(protocol, (value) => value.value),
      'requestId': ?requestId,
      'securitySettings': ?pulumi.Input.mapOptionalInputValue<SecuritySettingsComputeV1, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'serviceBindings': ?serviceBindings,
      'sessionAffinity': ?pulumi.Input.mapOptionalInputValue<BackendServiceSessionAffinityComputeV1, String>(sessionAffinity, (value) => value.value),
      'subsetting': ?pulumi.Input.mapOptionalInputValue<SubsettingComputeV1, Map<String, dynamic>>(subsetting, (value) => value.toMap()),
      'timeoutSec': ?timeoutSec,
      'usedBy': ?pulumi.Input.mapOptionalInputValue<List<BackendServiceUsedByComputeV1>, List<Map<String, dynamic>>>(usedBy, (value) => pulumi.Input.encodeList<BackendServiceUsedByComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackendServiceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return BackendServiceComputeV1Args(
      affinityCookieTtlSec: map['affinityCookieTtlSec'] == null ? null : (map['affinityCookieTtlSec'] as int).input(),
      backends: map['backends'] == null ? null : (pulumi.Input.decodeList<BackendComputeV1>(map['backends'], (value) => BackendComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cdnPolicy: map['cdnPolicy'] == null ? null : (BackendServiceCdnPolicyComputeV1.fromMap((map['cdnPolicy'] as Map).cast<String, dynamic>())).input(),
      circuitBreakers: map['circuitBreakers'] == null ? null : (CircuitBreakersComputeV1.fromMap((map['circuitBreakers'] as Map).cast<String, dynamic>())).input(),
      compressionMode: map['compressionMode'] == null ? null : (BackendServiceCompressionModeComputeV1.fromValue(map['compressionMode'] as String)).input(),
      connectionDraining: map['connectionDraining'] == null ? null : (ConnectionDrainingComputeV1.fromMap((map['connectionDraining'] as Map).cast<String, dynamic>())).input(),
      connectionTrackingPolicy: map['connectionTrackingPolicy'] == null ? null : (BackendServiceConnectionTrackingPolicyComputeV1.fromMap((map['connectionTrackingPolicy'] as Map).cast<String, dynamic>())).input(),
      consistentHash: map['consistentHash'] == null ? null : (ConsistentHashLoadBalancerSettingsComputeV1.fromMap((map['consistentHash'] as Map).cast<String, dynamic>())).input(),
      customRequestHeaders: map['customRequestHeaders'] == null ? null : ((map['customRequestHeaders'] as List).cast<String>()).input(),
      customResponseHeaders: map['customResponseHeaders'] == null ? null : ((map['customResponseHeaders'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enableCDN: map['enableCDN'] == null ? null : (map['enableCDN'] as bool).input(),
      failoverPolicy: map['failoverPolicy'] == null ? null : (BackendServiceFailoverPolicyComputeV1.fromMap((map['failoverPolicy'] as Map).cast<String, dynamic>())).input(),
      healthChecks: map['healthChecks'] == null ? null : ((map['healthChecks'] as List).cast<String>()).input(),
      iap: map['iap'] == null ? null : (BackendServiceIAPComputeV1.fromMap((map['iap'] as Map).cast<String, dynamic>())).input(),
      loadBalancingScheme: map['loadBalancingScheme'] == null ? null : (BackendServiceLoadBalancingSchemeComputeV1.fromValue(map['loadBalancingScheme'] as String)).input(),
      localityLbPolicies: map['localityLbPolicies'] == null ? null : (pulumi.Input.decodeList<BackendServiceLocalityLoadBalancingPolicyConfigComputeV1>(map['localityLbPolicies'], (value) => BackendServiceLocalityLoadBalancingPolicyConfigComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localityLbPolicy: map['localityLbPolicy'] == null ? null : (BackendServiceLocalityLbPolicyComputeV1.fromValue(map['localityLbPolicy'] as String)).input(),
      logConfig: map['logConfig'] == null ? null : (BackendServiceLogConfigComputeV1.fromMap((map['logConfig'] as Map).cast<String, dynamic>())).input(),
      maxStreamDuration: map['maxStreamDuration'] == null ? null : (DurationComputeV1.fromMap((map['maxStreamDuration'] as Map).cast<String, dynamic>())).input(),
      metadatas: map['metadatas'] == null ? null : ((map['metadatas'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      outlierDetection: map['outlierDetection'] == null ? null : (OutlierDetectionComputeV1.fromMap((map['outlierDetection'] as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      portName: map['portName'] == null ? null : (map['portName'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      protocol: map['protocol'] == null ? null : (BackendServiceProtocolComputeV1.fromValue(map['protocol'] as String)).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      securitySettings: map['securitySettings'] == null ? null : (SecuritySettingsComputeV1.fromMap((map['securitySettings'] as Map).cast<String, dynamic>())).input(),
      serviceBindings: map['serviceBindings'] == null ? null : ((map['serviceBindings'] as List).cast<String>()).input(),
      sessionAffinity: map['sessionAffinity'] == null ? null : (BackendServiceSessionAffinityComputeV1.fromValue(map['sessionAffinity'] as String)).input(),
      subsetting: map['subsetting'] == null ? null : (SubsettingComputeV1.fromMap((map['subsetting'] as Map).cast<String, dynamic>())).input(),
      timeoutSec: map['timeoutSec'] == null ? null : (map['timeoutSec'] as int).input(),
      usedBy: map['usedBy'] == null ? null : (pulumi.Input.decodeList<BackendServiceUsedByComputeV1>(map['usedBy'], (value) => BackendServiceUsedByComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

