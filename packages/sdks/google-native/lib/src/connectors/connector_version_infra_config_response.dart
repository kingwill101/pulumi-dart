// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hpaconfig_response.dart';
import 'resource_limits_response.dart';
import 'resource_requests_response.dart';

/// This cofiguration provides infra configs like rate limit threshold which need to be configurable for every connector version
class ConnectorVersionInfraConfigResponse {
  /// The window used for ratelimiting runtime requests to connections.
  final pulumi.Input<String> connectionRatelimitWindowSeconds;
  /// HPA autoscaling config.
  final pulumi.Input<HPAConfigResponse> hpaConfig;
  /// Max QPS supported for internal requests originating from Connd.
  final pulumi.Input<String> internalclientRatelimitThreshold;
  /// Max QPS supported by the connector version before throttling of requests.
  final pulumi.Input<String> ratelimitThreshold;
  /// System resource limits.
  final pulumi.Input<ResourceLimitsResponse> resourceLimits;
  /// System resource requests.
  final pulumi.Input<ResourceRequestsResponse> resourceRequests;
  /// The name of shared connector deployment.
  final pulumi.Input<String> sharedDeployment;

  /// Creates a new [ConnectorVersionInfraConfigResponse].
  /// [connectionRatelimitWindowSeconds] The window used for ratelimiting runtime requests to connections.
  /// [hpaConfig] HPA autoscaling config.
  /// [internalclientRatelimitThreshold] Max QPS supported for internal requests originating from Connd.
  /// [ratelimitThreshold] Max QPS supported by the connector version before throttling of requests.
  /// [resourceLimits] System resource limits.
  /// [resourceRequests] System resource requests.
  /// [sharedDeployment] The name of shared connector deployment.
  ConnectorVersionInfraConfigResponse({
    required this.connectionRatelimitWindowSeconds,
    required this.hpaConfig,
    required this.internalclientRatelimitThreshold,
    required this.ratelimitThreshold,
    required this.resourceLimits,
    required this.resourceRequests,
    required this.sharedDeployment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionRatelimitWindowSeconds': connectionRatelimitWindowSeconds,
      'hpaConfig': pulumi.Input.mapInputValue<HPAConfigResponse, Map<String, dynamic>>(hpaConfig, (value) => value.toMap()),
      'internalclientRatelimitThreshold': internalclientRatelimitThreshold,
      'ratelimitThreshold': ratelimitThreshold,
      'resourceLimits': pulumi.Input.mapInputValue<ResourceLimitsResponse, Map<String, dynamic>>(resourceLimits, (value) => value.toMap()),
      'resourceRequests': pulumi.Input.mapInputValue<ResourceRequestsResponse, Map<String, dynamic>>(resourceRequests, (value) => value.toMap()),
      'sharedDeployment': sharedDeployment,
    };
  }

  factory ConnectorVersionInfraConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorVersionInfraConfigResponse(
      connectionRatelimitWindowSeconds: pulumi.Input.fromValue(map['connectionRatelimitWindowSeconds'] as String),
      hpaConfig: pulumi.Input.fromValue(HPAConfigResponse.fromMap((map['hpaConfig']! as Map).cast<String, dynamic>())),
      internalclientRatelimitThreshold: pulumi.Input.fromValue(map['internalclientRatelimitThreshold'] as String),
      ratelimitThreshold: pulumi.Input.fromValue(map['ratelimitThreshold'] as String),
      resourceLimits: pulumi.Input.fromValue(ResourceLimitsResponse.fromMap((map['resourceLimits']! as Map).cast<String, dynamic>())),
      resourceRequests: pulumi.Input.fromValue(ResourceRequestsResponse.fromMap((map['resourceRequests']! as Map).cast<String, dynamic>())),
      sharedDeployment: pulumi.Input.fromValue(map['sharedDeployment'] as String),
    );
  }
}

