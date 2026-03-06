// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_backend_custom_metric.dart';

class GetRegionBackendServiceBackend {
  /// Specifies the balancing mode for this backend.
  ///
  /// See the [Backend Services Overview](https://cloud.google.com/load-balancing/docs/backend-service#balancing-mode)
  /// for an explanation of load balancing modes. Default value: "UTILIZATION" Possible values: ["UTILIZATION", "RATE", "CONNECTION", "CUSTOM_METRICS"]
  final pulumi.Input<String> balancingMode;
  /// A multiplier applied to the group's maximum servicing capacity
  /// (based on UTILIZATION, RATE or CONNECTION).
  ///
  /// ~&gt;**NOTE**: This field cannot be set for
  /// INTERNAL region backend services (default loadBalancingScheme),
  /// but is required for non-INTERNAL backend service. The total
  /// capacity_scaler for all backends must be non-zero.
  ///
  /// A setting of 0 means the group is completely drained, offering
  /// 0% of its available Capacity. Valid range is [0.0,1.0].
  final pulumi.Input<double> capacityScaler;
  /// The set of custom metrics that are used for &lt;code&gt;CUSTOM_METRICS&lt;/code&gt; BalancingMode.
  final pulumi.Input<List<GetRegionBackendServiceBackendCustomMetric>> customMetrics;
  /// An optional description of this resource.
  /// Provide this property when you create the resource.
  final pulumi.Input<String> description;
  /// This field designates whether this is a failover backend. More
  /// than one failover backend can be configured for a given RegionBackendService.
  final pulumi.Input<bool> failover;
  /// The fully-qualified URL of an Instance Group or Network Endpoint
  /// Group resource. In case of instance group this defines the list
  /// of instances that serve traffic. Member virtual machine
  /// instances from each instance group must live in the same zone as
  /// the instance group itself. No two backends in a backend service
  /// are allowed to use same Instance Group resource.
  ///
  /// For Network Endpoint Groups this defines list of endpoints. All
  /// endpoints of Network Endpoint Group must be hosted on instances
  /// located in the same zone as the Network Endpoint Group.
  ///
  /// Backend services cannot mix Instance Group and
  /// Network Endpoint Group backends.
  ///
  /// When the 'load_balancing_scheme' is INTERNAL, only instance groups
  /// are supported.
  ///
  /// Note that you must specify an Instance Group or Network Endpoint
  /// Group resource using the fully-qualified URL, rather than a
  /// partial URL.
  final pulumi.Input<String> group;
  /// The max number of simultaneous connections for the group. Can
  /// be used with either CONNECTION or UTILIZATION balancing modes.
  /// Cannot be set for INTERNAL backend services.
  ///
  /// For CONNECTION mode, either maxConnections or one
  /// of maxConnectionsPerInstance or maxConnectionsPerEndpoint,
  /// as appropriate for group type, must be set.
  final pulumi.Input<int> maxConnections;
  /// The max number of simultaneous connections that a single backend
  /// network endpoint can handle. Cannot be set
  /// for INTERNAL backend services.
  ///
  /// This is used to calculate the capacity of the group. Can be
  /// used in either CONNECTION or UTILIZATION balancing modes. For
  /// CONNECTION mode, either maxConnections or
  /// maxConnectionsPerEndpoint must be set.
  final pulumi.Input<int> maxConnectionsPerEndpoint;
  /// The max number of simultaneous connections that a single
  /// backend instance can handle. Cannot be set for INTERNAL backend
  /// services.
  ///
  /// This is used to calculate the capacity of the group.
  /// Can be used in either CONNECTION or UTILIZATION balancing modes.
  /// For CONNECTION mode, either maxConnections or
  /// maxConnectionsPerInstance must be set.
  final pulumi.Input<int> maxConnectionsPerInstance;
  /// Defines a maximum number of in-flight requests for the whole NEG
  /// or instance group. Not available if backend's balancingMode is RATE
  /// or CONNECTION.
  final pulumi.Input<int> maxInFlightRequests;
  /// Defines a maximum number of in-flight requests for a single endpoint.
  /// Not available if backend's balancingMode is RATE or CONNECTION.
  final pulumi.Input<int> maxInFlightRequestsPerEndpoint;
  /// Defines a maximum number of in-flight requests for a single VM.
  /// Not available if backend's balancingMode is RATE or CONNECTION.
  final pulumi.Input<int> maxInFlightRequestsPerInstance;
  /// The max requests per second (RPS) of the group. Cannot be set
  /// for INTERNAL backend services.
  ///
  /// Can be used with either RATE or UTILIZATION balancing modes,
  /// but required if RATE mode. Either maxRate or one
  /// of maxRatePerInstance or maxRatePerEndpoint, as appropriate for
  /// group type, must be set.
  final pulumi.Input<int> maxRate;
  /// The max requests per second (RPS) that a single backend network
  /// endpoint can handle. This is used to calculate the capacity of
  /// the group. Can be used in either balancing mode. For RATE mode,
  /// either maxRate or maxRatePerEndpoint must be set. Cannot be set
  /// for INTERNAL backend services.
  final pulumi.Input<double> maxRatePerEndpoint;
  /// The max requests per second (RPS) that a single backend
  /// instance can handle. This is used to calculate the capacity of
  /// the group. Can be used in either balancing mode. For RATE mode,
  /// either maxRate or maxRatePerInstance must be set. Cannot be set
  /// for INTERNAL backend services.
  final pulumi.Input<double> maxRatePerInstance;
  /// Used when balancingMode is UTILIZATION. This ratio defines the
  /// CPU utilization target for the group. Valid range is [0.0, 1.0].
  /// Cannot be set for INTERNAL backend services.
  final pulumi.Input<double> maxUtilization;
  /// This field specifies how long a connection should be kept alive for:
  /// - LONG: Most of the requests are expected to take more than multiple
  /// seconds to finish.
  /// - SHORT: Most requests are expected to finish with a sub-second latency. Possible values: ["LONG", "SHORT"]
  final pulumi.Input<String> trafficDuration;

  /// Creates a new [GetRegionBackendServiceBackend].
  /// [balancingMode] Specifies the balancing mode for this backend.
  /// [capacityScaler] A multiplier applied to the group's maximum servicing capacity
  /// [customMetrics] The set of custom metrics that are used for &lt;code&gt;CUSTOM_METRICS&lt;/code&gt; BalancingMode.
  /// [description] An optional description of this resource.
  /// [failover] This field designates whether this is a failover backend. More
  /// [group] The fully-qualified URL of an Instance Group or Network Endpoint
  /// [maxConnections] The max number of simultaneous connections for the group. Can
  /// [maxConnectionsPerEndpoint] The max number of simultaneous connections that a single backend
  /// [maxConnectionsPerInstance] The max number of simultaneous connections that a single
  /// [maxInFlightRequests] Defines a maximum number of in-flight requests for the whole NEG
  /// [maxInFlightRequestsPerEndpoint] Defines a maximum number of in-flight requests for a single endpoint.
  /// [maxInFlightRequestsPerInstance] Defines a maximum number of in-flight requests for a single VM.
  /// [maxRate] The max requests per second (RPS) of the group. Cannot be set
  /// [maxRatePerEndpoint] The max requests per second (RPS) that a single backend network
  /// [maxRatePerInstance] The max requests per second (RPS) that a single backend
  /// [maxUtilization] Used when balancingMode is UTILIZATION. This ratio defines the
  /// [trafficDuration] This field specifies how long a connection should be kept alive for:
  const GetRegionBackendServiceBackend({
    required this.balancingMode,
    required this.capacityScaler,
    required this.customMetrics,
    required this.description,
    required this.failover,
    required this.group,
    required this.maxConnections,
    required this.maxConnectionsPerEndpoint,
    required this.maxConnectionsPerInstance,
    required this.maxInFlightRequests,
    required this.maxInFlightRequestsPerEndpoint,
    required this.maxInFlightRequestsPerInstance,
    required this.maxRate,
    required this.maxRatePerEndpoint,
    required this.maxRatePerInstance,
    required this.maxUtilization,
    required this.trafficDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'balancingMode': balancingMode,
      'capacityScaler': capacityScaler,
      'customMetrics': pulumi.Input.mapInputValue<List<GetRegionBackendServiceBackendCustomMetric>, List<Map<String, dynamic>>>(customMetrics, (value) => pulumi.Input.encodeList<GetRegionBackendServiceBackendCustomMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'failover': failover,
      'group': group,
      'maxConnections': maxConnections,
      'maxConnectionsPerEndpoint': maxConnectionsPerEndpoint,
      'maxConnectionsPerInstance': maxConnectionsPerInstance,
      'maxInFlightRequests': maxInFlightRequests,
      'maxInFlightRequestsPerEndpoint': maxInFlightRequestsPerEndpoint,
      'maxInFlightRequestsPerInstance': maxInFlightRequestsPerInstance,
      'maxRate': maxRate,
      'maxRatePerEndpoint': maxRatePerEndpoint,
      'maxRatePerInstance': maxRatePerInstance,
      'maxUtilization': maxUtilization,
      'trafficDuration': trafficDuration,
    };
  }

  factory GetRegionBackendServiceBackend.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceBackend(
      balancingMode: pulumi.Input.fromValue(map['balancingMode'] as String),
      capacityScaler: pulumi.Input.fromValue(map['capacityScaler'] as double),
      customMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceBackendCustomMetric>(map['customMetrics']!, (value) => GetRegionBackendServiceBackendCustomMetric.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      failover: pulumi.Input.fromValue(map['failover'] as bool),
      group: pulumi.Input.fromValue(map['group'] as String),
      maxConnections: pulumi.Input.fromValue(map['maxConnections'] as int),
      maxConnectionsPerEndpoint: pulumi.Input.fromValue(map['maxConnectionsPerEndpoint'] as int),
      maxConnectionsPerInstance: pulumi.Input.fromValue(map['maxConnectionsPerInstance'] as int),
      maxInFlightRequests: pulumi.Input.fromValue(map['maxInFlightRequests'] as int),
      maxInFlightRequestsPerEndpoint: pulumi.Input.fromValue(map['maxInFlightRequestsPerEndpoint'] as int),
      maxInFlightRequestsPerInstance: pulumi.Input.fromValue(map['maxInFlightRequestsPerInstance'] as int),
      maxRate: pulumi.Input.fromValue(map['maxRate'] as int),
      maxRatePerEndpoint: pulumi.Input.fromValue(map['maxRatePerEndpoint'] as double),
      maxRatePerInstance: pulumi.Input.fromValue(map['maxRatePerInstance'] as double),
      maxUtilization: pulumi.Input.fromValue(map['maxUtilization'] as double),
      trafficDuration: pulumi.Input.fromValue(map['trafficDuration'] as String),
    );
  }
}

