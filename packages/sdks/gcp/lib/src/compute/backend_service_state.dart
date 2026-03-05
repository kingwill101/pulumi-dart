// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_backend.dart';
import 'backend_service_cdn_policy.dart';
import 'backend_service_circuit_breakers.dart';
import 'backend_service_consistent_hash.dart';
import 'backend_service_custom_metric.dart';
import 'backend_service_dynamic_forwarding.dart';
import 'backend_service_iap.dart';
import 'backend_service_locality_lb_policy.dart';
import 'backend_service_log_config.dart';
import 'backend_service_max_stream_duration.dart';
import 'backend_service_network_pass_through_lb_traffic_policy.dart';
import 'backend_service_outlier_detection.dart';
import 'backend_service_params.dart';
import 'backend_service_security_settings.dart';
import 'backend_service_strong_session_affinity_cookie.dart';
import 'backend_service_tls_settings.dart';

/// Input properties used for looking up and filtering BackendService resources.
class BackendServiceState {
  /// Lifetime of cookies in seconds if session_affinity is
  /// GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts
  /// only until the end of the browser session (or equivalent). The
  /// maximum allowed value for TTL is one day.
  /// When the load balancing scheme is INTERNAL, this field is not used.
  final pulumi.Input<int>? affinityCookieTtlSec;
  /// The set of backends that serve this BackendService.
  /// Structure is documented below.
  final pulumi.Input<List<BackendServiceBackend>>? backends;
  /// Cloud CDN configuration for this BackendService.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceCdnPolicy>? cdnPolicy;
  /// Settings controlling the volume of connections to a backend service. This field
  /// is applicable only when the load_balancing_scheme is set to INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceCircuitBreakers>? circuitBreakers;
  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// Possible values are: `AUTOMATIC`, `DISABLED`.
  final pulumi.Input<String>? compressionMode;
  /// Time for which instance will be drained (not accept new
  /// connections, but still work to finish started).
  final pulumi.Input<int>? connectionDrainingTimeoutSec;
  /// Consistent Hash-based load balancing can be used to provide soft session
  /// affinity based on HTTP headers, cookies or other properties. This load balancing
  /// policy is applicable only for HTTP connections. The affinity to a particular
  /// destination host will be lost when one or more hosts are added/removed from the
  /// destination service. This field specifies parameters that control consistent
  /// hashing. This field only applies if the load_balancing_scheme is set to
  /// INTERNAL_SELF_MANAGED. This field is only applicable when locality_lb_policy is
  /// set to MAGLEV or RING_HASH.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceConsistentHash>? consistentHash;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// List of custom metrics that are used for the WEIGHTED_ROUND_ROBIN locality_lb_policy.
  /// Structure is documented below.
  final pulumi.Input<List<BackendServiceCustomMetric>>? customMetrics;
  /// Headers that the HTTP/S load balancer should add to proxied
  /// requests.
  final pulumi.Input<List<String>>? customRequestHeaders;
  /// Headers that the HTTP/S load balancer should add to proxied
  /// responses.
  final pulumi.Input<List<String>>? customResponseHeaders;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Dynamic forwarding configuration. This field is used to configure the backend service with dynamic forwarding
  /// feature which together with Service Extension allows customized and complex routing logic.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceDynamicForwarding>? dynamicForwarding;
  /// The resource URL for the edge security policy associated with this backend service.
  final pulumi.Input<String>? edgeSecurityPolicy;
  /// If true, enable Cloud CDN for this BackendService.
  final pulumi.Input<bool>? enableCdn;
  /// Specifies the canary migration state. Possible values are PREPARE, TEST_BY_PERCENTAGE, and
  /// TEST_ALL_TRAFFIC.
  /// To begin the migration from EXTERNAL to EXTERNAL_MANAGED, the state must be changed to
  /// PREPARE. The state must be changed to TEST_ALL_TRAFFIC before the loadBalancingScheme can be
  /// changed to EXTERNAL_MANAGED. Optionally, the TEST_BY_PERCENTAGE state can be used to migrate
  /// traffic by percentage using externalManagedMigrationTestingPercentage.
  /// Rolling back a migration requires the states to be set in reverse order. So changing the
  /// scheme from EXTERNAL_MANAGED to EXTERNAL requires the state to be set to TEST_ALL_TRAFFIC at
  /// the same time. Optionally, the TEST_BY_PERCENTAGE state can be used to migrate some traffic
  /// back to EXTERNAL or PREPARE can be used to migrate all traffic back to EXTERNAL.
  /// Possible values are: `PREPARE`, `TEST_BY_PERCENTAGE`, `TEST_ALL_TRAFFIC`.
  final pulumi.Input<String>? externalManagedMigrationState;
  /// Determines the fraction of requests that should be processed by the Global external
  /// Application Load Balancer.
  /// The value of this field must be in the range [0, 100].
  /// Session affinity options will slightly affect this routing behavior, for more details,
  /// see: Session Affinity.
  /// This value can only be set if the loadBalancingScheme in the backend service is set to
  /// EXTERNAL (when using the Classic ALB) and the migration state is TEST_BY_PERCENTAGE.
  final pulumi.Input<double>? externalManagedMigrationTestingPercentage;
  /// Fingerprint of this resource. A hash of the contents stored in this
  /// object. This field is used in optimistic locking.
  final pulumi.Input<String>? fingerprint;
  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<int>? generatedId;
  /// The set of URLs to the HttpHealthCheck or HttpsHealthCheck resource
  /// for health checking this BackendService. Currently at most one health
  /// check can be specified.
  /// A health check must be specified unless the backend service uses an internet
  /// or serverless NEG as a backend.
  /// For internal load balancing, a URL to a HealthCheck resource must be specified instead.
  final pulumi.Input<String>? healthChecks;
  /// Settings for enabling Cloud Identity Aware Proxy.
  /// If OAuth client is not set, the Google-managed OAuth client is used.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceIap>? iap;
  /// Specifies preference of traffic to the backend (from the proxy and from the client for proxyless gRPC).
  /// Possible values are: `IPV4_ONLY`, `PREFER_IPV6`, `IPV6_ONLY`.
  final pulumi.Input<String>? ipAddressSelectionPolicy;
  /// Indicates whether the backend service will be used with internal or
  /// external load balancing. A backend service created for one type of
  /// load balancing cannot be used with the other. For more information, refer to
  /// [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `INTERNAL_SELF_MANAGED`, `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  final pulumi.Input<String>? loadBalancingScheme;
  /// A list of locality load balancing policies to be used in order of
  /// preference. Either the policy or the customPolicy field should be set.
  /// Overrides any value set in the localityLbPolicy field.
  /// localityLbPolicies is only supported when the BackendService is referenced
  /// by a URL Map that is referenced by a target gRPC proxy that has the
  /// validateForProxyless field set to true.
  /// Structure is documented below.
  final pulumi.Input<List<BackendServiceLocalityLbPolicy>>? localityLbPolicies;
  /// The load balancing algorithm used within the scope of the locality.
  /// The possible values are:
  /// * `ROUND_ROBIN`: This is a simple policy in which each healthy backend
  /// is selected in round robin order.
  /// * `LEAST_REQUEST`: An O(1) algorithm which selects two random healthy
  /// hosts and picks the host which has fewer active requests.
  /// * `RING_HASH`: The ring/modulo hash load balancer implements consistent
  /// hashing to backends. The algorithm has the property that the
  /// addition/removal of a host from a set of N hosts only affects
  /// 1/N of the requests.
  /// * `RANDOM`: The load balancer selects a random healthy host.
  /// * `ORIGINAL_DESTINATION`: Backend host is selected based on the client
  /// connection metadata, i.e., connections are opened
  /// to the same address as the destination address of
  /// the incoming connection before the connection
  /// was redirected to the load balancer.
  /// * `MAGLEV`: used as a drop in replacement for the ring hash load balancer.
  /// Maglev is not as stable as ring hash but has faster table lookup
  /// build times and host selection times. For more information about
  /// Maglev, refer to https://ai.google/research/pubs/pub44824
  /// * `WEIGHTED_MAGLEV`: Per-instance weighted Load Balancing via health check
  /// reported weights. Only applicable to loadBalancingScheme
  /// EXTERNAL. If set, the Backend Service must
  /// configure a non legacy HTTP-based Health Check, and
  /// health check replies are expected to contain
  /// non-standard HTTP response header field
  /// X-Load-Balancing-Endpoint-Weight to specify the
  /// per-instance weights. If set, Load Balancing is weight
  /// based on the per-instance weights reported in the last
  /// processed health check replies, as long as every
  /// instance either reported a valid weight or had
  /// UNAVAILABLE_WEIGHT. Otherwise, Load Balancing remains
  /// equal-weight.
  /// * `WEIGHTED_ROUND_ROBIN`: Per-endpoint weighted round-robin Load Balancing using weights computed
  /// from Backend reported Custom Metrics. If set, the Backend Service
  /// responses are expected to contain non-standard HTTP response header field
  /// X-Endpoint-Load-Metrics. The reported metrics
  /// to use for computing the weights are specified via the
  /// backends[].customMetrics fields.
  /// locality_lb_policy is applicable to either:
  /// * A regional backend service with the service_protocol set to HTTP, HTTPS, HTTP2 or H2C,
  /// and loadBalancingScheme set to INTERNAL_MANAGED.
  /// * A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  /// * A regional backend service with loadBalancingScheme set to EXTERNAL (External Network
  /// Load Balancing). Only MAGLEV and WEIGHTED_MAGLEV values are possible for External
  /// Network Load Balancing. The default is MAGLEV.
  /// If session_affinity is not NONE, and locality_lb_policy is not set to MAGLEV, WEIGHTED_MAGLEV,
  /// or RING_HASH, session affinity settings will not take effect.
  /// Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced
  /// by a URL map that is bound to target gRPC proxy that has validate_for_proxyless
  /// field set to true.
  /// Possible values are: `ROUND_ROBIN`, `LEAST_REQUEST`, `RING_HASH`, `RANDOM`, `ORIGINAL_DESTINATION`, `MAGLEV`, `WEIGHTED_MAGLEV`, `WEIGHTED_ROUND_ROBIN`.
  final pulumi.Input<String>? localityLbPolicy;
  /// This field denotes the logging options for the load balancer traffic served by this backend service.
  /// If logging is enabled, logs will be exported to Stackdriver.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceLogConfig>? logConfig;
  /// Specifies the default maximum duration (timeout) for streams to this service. Duration is computed from the
  /// beginning of the stream until the response has been completely processed, including all retries. A stream that
  /// does not complete in this duration is closed.
  /// If not specified, there will be no timeout limit, i.e. the maximum duration is infinite.
  /// This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service.
  /// This field is only allowed when the loadBalancingScheme of the backend service is INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceMaxStreamDuration>? maxStreamDuration;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Configures traffic steering properties of internal passthrough Network Load Balancers.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceNetworkPassThroughLbTrafficPolicy>? networkPassThroughLbTrafficPolicy;
  /// Settings controlling eviction of unhealthy hosts from the load balancing pool.
  /// Applicable backend service types can be a global backend service with the
  /// loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL_MANAGED.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceOutlierDetection>? outlierDetection;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<BackendServiceParams>? params;
  /// Name of backend port. The same name should appear in the instance
  /// groups referenced by this service. Required when the load balancing
  /// scheme is EXTERNAL.
  final pulumi.Input<String>? portName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The protocol this BackendService uses to communicate with backends.
  /// The default is HTTP. Possible values are HTTP, HTTPS, HTTP2, H2C, TCP, SSL, UDP
  /// or GRPC. Refer to the documentation for the load balancers or for Traffic Director
  /// for more information. Must be set to GRPC when the backend service is referenced
  /// by a URL map that is bound to target gRPC proxy.
  /// Possible values are: `HTTP`, `HTTPS`, `HTTP2`, `TCP`, `SSL`, `UDP`, `GRPC`, `UNSPECIFIED`, `H2C`.
  final pulumi.Input<String>? protocol;
  /// The security policy associated with this backend service.
  final pulumi.Input<String>? securityPolicy;
  /// The security settings that apply to this backend service. This field is applicable to either
  /// a regional backend service with the service_protocol set to HTTP, HTTPS, HTTP2 or H2C, and
  /// load_balancing_scheme set to INTERNAL_MANAGED; or a global backend service with the
  /// load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceSecuritySettings>? securitySettings;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// URL to networkservices.ServiceLbPolicy resource.
  /// Can only be set if load balancing scheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED or INTERNAL_SELF_MANAGED and the scope is global.
  final pulumi.Input<String>? serviceLbPolicy;
  /// Type of session affinity to use. The default is NONE. Session affinity is
  /// not applicable if the protocol is UDP.
  /// Possible values are: `NONE`, `CLIENT_IP`, `CLIENT_IP_PORT_PROTO`, `CLIENT_IP_PROTO`, `GENERATED_COOKIE`, `HEADER_FIELD`, `HTTP_COOKIE`, `STRONG_COOKIE_AFFINITY`.
  final pulumi.Input<String>? sessionAffinity;
  /// Describes the HTTP cookie used for stateful session affinity. This field is applicable and required if the sessionAffinity is set to STRONG_COOKIE_AFFINITY.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceStrongSessionAffinityCookie>? strongSessionAffinityCookie;
  /// The backend service timeout has a different meaning depending on the type of load balancer.
  /// For more information see, [Backend service settings](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices).
  /// The default is 30 seconds.
  /// The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds.
  final pulumi.Input<int>? timeoutSec;
  /// Configuration for Backend Authenticated TLS and mTLS. May only be specified when the backend protocol is SSL, HTTPS or HTTP2.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceTlsSettings>? tlsSettings;

  /// Creates a new [BackendServiceState].
  /// [affinityCookieTtlSec] Lifetime of cookies in seconds if session_affinity is
  /// [backends] The set of backends that serve this BackendService.
  /// [cdnPolicy] Cloud CDN configuration for this BackendService.
  /// [circuitBreakers] Settings controlling the volume of connections to a backend service. This field
  /// [compressionMode] Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// [connectionDrainingTimeoutSec] Time for which instance will be drained (not accept new
  /// [consistentHash] Consistent Hash-based load balancing can be used to provide soft session
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [customMetrics] List of custom metrics that are used for the WEIGHTED_ROUND_ROBIN locality_lb_policy.
  /// [customRequestHeaders] Headers that the HTTP/S load balancer should add to proxied
  /// [customResponseHeaders] Headers that the HTTP/S load balancer should add to proxied
  /// [description] An optional description of this resource.
  /// [dynamicForwarding] Dynamic forwarding configuration. This field is used to configure the backend service with dynamic forwarding
  /// [edgeSecurityPolicy] The resource URL for the edge security policy associated with this backend service.
  /// [enableCdn] If true, enable Cloud CDN for this BackendService.
  /// [externalManagedMigrationState] Specifies the canary migration state. Possible values are PREPARE, TEST_BY_PERCENTAGE, and
  /// [externalManagedMigrationTestingPercentage] Determines the fraction of requests that should be processed by the Global external
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this
  /// [generatedId] The unique identifier for the resource. This identifier is defined by the server.
  /// [healthChecks] The set of URLs to the HttpHealthCheck or HttpsHealthCheck resource
  /// [iap] Settings for enabling Cloud Identity Aware Proxy.
  /// [ipAddressSelectionPolicy] Specifies preference of traffic to the backend (from the proxy and from the client for proxyless gRPC).
  /// [loadBalancingScheme] Indicates whether the backend service will be used with internal or
  /// [localityLbPolicies] A list of locality load balancing policies to be used in order of
  /// [localityLbPolicy] The load balancing algorithm used within the scope of the locality.
  /// [logConfig] This field denotes the logging options for the load balancer traffic served by this backend service.
  /// [maxStreamDuration] Specifies the default maximum duration (timeout) for streams to this service. Duration is computed from the
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [networkPassThroughLbTrafficPolicy] Configures traffic steering properties of internal passthrough Network Load Balancers.
  /// [outlierDetection] Settings controlling eviction of unhealthy hosts from the load balancing pool.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [portName] Name of backend port. The same name should appear in the instance
  /// [project] The ID of the project in which the resource belongs.
  /// [protocol] The protocol this BackendService uses to communicate with backends.
  /// [securityPolicy] The security policy associated with this backend service.
  /// [securitySettings] The security settings that apply to this backend service. This field is applicable to either
  /// [selfLink] The URI of the created resource.
  /// [serviceLbPolicy] URL to networkservices.ServiceLbPolicy resource.
  /// [sessionAffinity] Type of session affinity to use. The default is NONE. Session affinity is
  /// [strongSessionAffinityCookie] Describes the HTTP cookie used for stateful session affinity. This field is applicable and required if the sessionAffinity is set to STRONG_COOKIE_AFFINITY.
  /// [timeoutSec] The backend service timeout has a different meaning depending on the type of load balancer.
  /// [tlsSettings] Configuration for Backend Authenticated TLS and mTLS. May only be specified when the backend protocol is SSL, HTTPS or HTTP2.
  BackendServiceState({
    this.affinityCookieTtlSec,
    this.backends,
    this.cdnPolicy,
    this.circuitBreakers,
    this.compressionMode,
    this.connectionDrainingTimeoutSec,
    this.consistentHash,
    this.creationTimestamp,
    this.customMetrics,
    this.customRequestHeaders,
    this.customResponseHeaders,
    this.description,
    this.dynamicForwarding,
    this.edgeSecurityPolicy,
    this.enableCdn,
    this.externalManagedMigrationState,
    this.externalManagedMigrationTestingPercentage,
    this.fingerprint,
    this.generatedId,
    this.healthChecks,
    this.iap,
    this.ipAddressSelectionPolicy,
    this.loadBalancingScheme,
    this.localityLbPolicies,
    this.localityLbPolicy,
    this.logConfig,
    this.maxStreamDuration,
    this.name,
    this.networkPassThroughLbTrafficPolicy,
    this.outlierDetection,
    this.params,
    this.portName,
    this.project,
    this.protocol,
    this.securityPolicy,
    this.securitySettings,
    this.selfLink,
    this.serviceLbPolicy,
    this.sessionAffinity,
    this.strongSessionAffinityCookie,
    this.timeoutSec,
    this.tlsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityCookieTtlSec': ?affinityCookieTtlSec,
      'backends': ?pulumi.Input.mapOptionalInputValue<List<BackendServiceBackend>, List<Map<String, dynamic>>>(backends, (value) => pulumi.Input.encodeList<BackendServiceBackend, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cdnPolicy': ?pulumi.Input.mapOptionalInputValue<BackendServiceCdnPolicy, Map<String, dynamic>>(cdnPolicy, (value) => value.toMap()),
      'circuitBreakers': ?pulumi.Input.mapOptionalInputValue<BackendServiceCircuitBreakers, Map<String, dynamic>>(circuitBreakers, (value) => value.toMap()),
      'compressionMode': ?compressionMode,
      'connectionDrainingTimeoutSec': ?connectionDrainingTimeoutSec,
      'consistentHash': ?pulumi.Input.mapOptionalInputValue<BackendServiceConsistentHash, Map<String, dynamic>>(consistentHash, (value) => value.toMap()),
      'creationTimestamp': ?creationTimestamp,
      'customMetrics': ?pulumi.Input.mapOptionalInputValue<List<BackendServiceCustomMetric>, List<Map<String, dynamic>>>(customMetrics, (value) => pulumi.Input.encodeList<BackendServiceCustomMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customRequestHeaders': ?customRequestHeaders,
      'customResponseHeaders': ?customResponseHeaders,
      'description': ?description,
      'dynamicForwarding': ?pulumi.Input.mapOptionalInputValue<BackendServiceDynamicForwarding, Map<String, dynamic>>(dynamicForwarding, (value) => value.toMap()),
      'edgeSecurityPolicy': ?edgeSecurityPolicy,
      'enableCdn': ?enableCdn,
      'externalManagedMigrationState': ?externalManagedMigrationState,
      'externalManagedMigrationTestingPercentage': ?externalManagedMigrationTestingPercentage,
      'fingerprint': ?fingerprint,
      'generatedId': ?generatedId,
      'healthChecks': ?healthChecks,
      'iap': ?pulumi.Input.mapOptionalInputValue<BackendServiceIap, Map<String, dynamic>>(iap, (value) => value.toMap()),
      'ipAddressSelectionPolicy': ?ipAddressSelectionPolicy,
      'loadBalancingScheme': ?loadBalancingScheme,
      'localityLbPolicies': ?pulumi.Input.mapOptionalInputValue<List<BackendServiceLocalityLbPolicy>, List<Map<String, dynamic>>>(localityLbPolicies, (value) => pulumi.Input.encodeList<BackendServiceLocalityLbPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localityLbPolicy': ?localityLbPolicy,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<BackendServiceLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'maxStreamDuration': ?pulumi.Input.mapOptionalInputValue<BackendServiceMaxStreamDuration, Map<String, dynamic>>(maxStreamDuration, (value) => value.toMap()),
      'name': ?name,
      'networkPassThroughLbTrafficPolicy': ?pulumi.Input.mapOptionalInputValue<BackendServiceNetworkPassThroughLbTrafficPolicy, Map<String, dynamic>>(networkPassThroughLbTrafficPolicy, (value) => value.toMap()),
      'outlierDetection': ?pulumi.Input.mapOptionalInputValue<BackendServiceOutlierDetection, Map<String, dynamic>>(outlierDetection, (value) => value.toMap()),
      'params': ?pulumi.Input.mapOptionalInputValue<BackendServiceParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'portName': ?portName,
      'project': ?project,
      'protocol': ?protocol,
      'securityPolicy': ?securityPolicy,
      'securitySettings': ?pulumi.Input.mapOptionalInputValue<BackendServiceSecuritySettings, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'selfLink': ?selfLink,
      'serviceLbPolicy': ?serviceLbPolicy,
      'sessionAffinity': ?sessionAffinity,
      'strongSessionAffinityCookie': ?pulumi.Input.mapOptionalInputValue<BackendServiceStrongSessionAffinityCookie, Map<String, dynamic>>(strongSessionAffinityCookie, (value) => value.toMap()),
      'timeoutSec': ?timeoutSec,
      'tlsSettings': ?pulumi.Input.mapOptionalInputValue<BackendServiceTlsSettings, Map<String, dynamic>>(tlsSettings, (value) => value.toMap()),
    };
  }

  factory BackendServiceState.fromMap(Map<String, dynamic> map) {
    return BackendServiceState(
      affinityCookieTtlSec: (() { final guardedValue = map['affinityCookieTtlSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backends: (() { final guardedValue = map['backends']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendServiceBackend>(guardedValue, (value) => BackendServiceBackend.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cdnPolicy: (() { final guardedValue = map['cdnPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceCdnPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      circuitBreakers: (() { final guardedValue = map['circuitBreakers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceCircuitBreakers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compressionMode: (() { final guardedValue = map['compressionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionDrainingTimeoutSec: (() { final guardedValue = map['connectionDrainingTimeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      consistentHash: (() { final guardedValue = map['consistentHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceConsistentHash.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customMetrics: (() { final guardedValue = map['customMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendServiceCustomMetric>(guardedValue, (value) => BackendServiceCustomMetric.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customRequestHeaders: (() { final guardedValue = map['customRequestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      customResponseHeaders: (() { final guardedValue = map['customResponseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicForwarding: (() { final guardedValue = map['dynamicForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceDynamicForwarding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      edgeSecurityPolicy: (() { final guardedValue = map['edgeSecurityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableCdn: (() { final guardedValue = map['enableCdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      externalManagedMigrationState: (() { final guardedValue = map['externalManagedMigrationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalManagedMigrationTestingPercentage: (() { final guardedValue = map['externalManagedMigrationTestingPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generatedId: (() { final guardedValue = map['generatedId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      healthChecks: (() { final guardedValue = map['healthChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iap: (() { final guardedValue = map['iap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceIap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipAddressSelectionPolicy: (() { final guardedValue = map['ipAddressSelectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancingScheme: (() { final guardedValue = map['loadBalancingScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localityLbPolicies: (() { final guardedValue = map['localityLbPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendServiceLocalityLbPolicy>(guardedValue, (value) => BackendServiceLocalityLbPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localityLbPolicy: (() { final guardedValue = map['localityLbPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxStreamDuration: (() { final guardedValue = map['maxStreamDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceMaxStreamDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkPassThroughLbTrafficPolicy: (() { final guardedValue = map['networkPassThroughLbTrafficPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceNetworkPassThroughLbTrafficPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outlierDetection: (() { final guardedValue = map['outlierDetection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceOutlierDetection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      portName: (() { final guardedValue = map['portName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityPolicy: (() { final guardedValue = map['securityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securitySettings: (() { final guardedValue = map['securitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceSecuritySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceLbPolicy: (() { final guardedValue = map['serviceLbPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionAffinity: (() { final guardedValue = map['sessionAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strongSessionAffinityCookie: (() { final guardedValue = map['strongSessionAffinityCookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceStrongSessionAffinityCookie.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutSec: (() { final guardedValue = map['timeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tlsSettings: (() { final guardedValue = map['tlsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceTlsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

