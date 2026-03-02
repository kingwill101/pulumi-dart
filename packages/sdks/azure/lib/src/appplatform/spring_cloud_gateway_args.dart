// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_gateway_api_metadata.dart';
import 'spring_cloud_gateway_client_authorization.dart';
import 'spring_cloud_gateway_cors.dart';
import 'spring_cloud_gateway_local_response_cache_per_instance.dart';
import 'spring_cloud_gateway_local_response_cache_per_route.dart';
import 'spring_cloud_gateway_quota.dart';
import 'spring_cloud_gateway_sso.dart';

/// {@template pulumi_appplatform_spring_cloud_gateway_spring_cloud_gateway_args_doc}
/// The set of arguments for SpringCloudGateway.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_gateway_spring_cloud_gateway_args_doc}
class SpringCloudGatewayArgs {
  /// A `api_metadata` block as defined below.
  final pulumi.Input<SpringCloudGatewayApiMetadata>? apiMetadata;
  /// Specifies a list of Spring Cloud Application Performance Monitoring IDs.
  final pulumi.Input<List<String>>? applicationPerformanceMonitoringIds;
  /// Specifies a list of application performance monitoring types used in the Spring Cloud Gateway. The allowed values are `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`.
  final pulumi.Input<List<String>>? applicationPerformanceMonitoringTypes;
  /// A `client_authorization` block as defined below.
  final pulumi.Input<SpringCloudGatewayClientAuthorization>? clientAuthorization;
  /// A `cors` block as defined below.
  final pulumi.Input<SpringCloudGatewayCors>? cors;
  /// Specifies the environment variables of the Spring Cloud Gateway as a map of key-value pairs.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// is only https is allowed?
  final pulumi.Input<bool>? httpsOnly;
  /// Specifies the required instance count of the Spring Cloud Gateway. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  final pulumi.Input<int>? instanceCount;
  /// A `local_response_cache_per_instance` block as defined below. Only one of `local_response_cache_per_instance` or `local_response_cache_per_route` can be specified.
  final pulumi.Input<SpringCloudGatewayLocalResponseCachePerInstance>? localResponseCachePerInstance;
  /// A `local_response_cache_per_route` block as defined below. Only one of `local_response_cache_per_instance` or `local_response_cache_per_route` can be specified.
  final pulumi.Input<SpringCloudGatewayLocalResponseCachePerRoute>? localResponseCachePerRoute;
  /// The name which should be used for this Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway to be created. The only possible value is `default`.
  final pulumi.Input<String>? name;
  /// Indicates whether the Spring Cloud Gateway exposes endpoint.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// A `quota` block as defined below.
  final pulumi.Input<SpringCloudGatewayQuota>? quota;
  /// Specifies the sensitive environment variables of the Spring Cloud Gateway as a map of key-value pairs.
  final pulumi.Input<Map<String, String>>? sensitiveEnvironmentVariables;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Gateway to be created.
  final pulumi.Input<String> springCloudServiceId;
  /// A `sso` block as defined below.
  final pulumi.Input<SpringCloudGatewaySso>? sso;

  /// Creates a new [SpringCloudGatewayArgs].
  /// [apiMetadata] A `api_metadata` block as defined below.
  /// [applicationPerformanceMonitoringIds] Specifies a list of Spring Cloud Application Performance Monitoring IDs.
  /// [applicationPerformanceMonitoringTypes] Specifies a list of application performance monitoring types used in the Spring Cloud Gateway. The allowed values are `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`.
  /// [clientAuthorization] A `client_authorization` block as defined below.
  /// [cors] A `cors` block as defined below.
  /// [environmentVariables] Specifies the environment variables of the Spring Cloud Gateway as a map of key-value pairs.
  /// [httpsOnly] is only https is allowed?
  /// [instanceCount] Specifies the required instance count of the Spring Cloud Gateway. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  /// [localResponseCachePerInstance] A `local_response_cache_per_instance` block as defined below. Only one of `local_response_cache_per_instance` or `local_response_cache_per_route` can be specified.
  /// [localResponseCachePerRoute] A `local_response_cache_per_route` block as defined below. Only one of `local_response_cache_per_instance` or `local_response_cache_per_route` can be specified.
  /// [name] The name which should be used for this Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway to be created. The only possible value is `default`.
  /// [publicNetworkAccessEnabled] Indicates whether the Spring Cloud Gateway exposes endpoint.
  /// [quota] A `quota` block as defined below.
  /// [sensitiveEnvironmentVariables] Specifies the sensitive environment variables of the Spring Cloud Gateway as a map of key-value pairs.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Gateway to be created.
  /// [sso] A `sso` block as defined below.
  SpringCloudGatewayArgs({
    this.apiMetadata,
    this.applicationPerformanceMonitoringIds,
    this.applicationPerformanceMonitoringTypes,
    this.clientAuthorization,
    this.cors,
    this.environmentVariables,
    this.httpsOnly,
    this.instanceCount,
    this.localResponseCachePerInstance,
    this.localResponseCachePerRoute,
    this.name,
    this.publicNetworkAccessEnabled,
    this.quota,
    this.sensitiveEnvironmentVariables,
    required this.springCloudServiceId,
    this.sso,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiMetadata': ?pulumi.Input.mapOptionalInputValue<SpringCloudGatewayApiMetadata, Map<String, dynamic>>(apiMetadata, (value) => value.toMap()),
      'applicationPerformanceMonitoringIds': ?applicationPerformanceMonitoringIds,
      'applicationPerformanceMonitoringTypes': ?applicationPerformanceMonitoringTypes,
      'clientAuthorization': ?pulumi.Input.mapOptionalInputValue<SpringCloudGatewayClientAuthorization, Map<String, dynamic>>(clientAuthorization, (value) => value.toMap()),
      'cors': ?pulumi.Input.mapOptionalInputValue<SpringCloudGatewayCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'environmentVariables': ?environmentVariables,
      'httpsOnly': ?httpsOnly,
      'instanceCount': ?instanceCount,
      'localResponseCachePerInstance': ?pulumi.Input.mapOptionalInputValue<SpringCloudGatewayLocalResponseCachePerInstance, Map<String, dynamic>>(localResponseCachePerInstance, (value) => value.toMap()),
      'localResponseCachePerRoute': ?pulumi.Input.mapOptionalInputValue<SpringCloudGatewayLocalResponseCachePerRoute, Map<String, dynamic>>(localResponseCachePerRoute, (value) => value.toMap()),
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'quota': ?pulumi.Input.mapOptionalInputValue<SpringCloudGatewayQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'sensitiveEnvironmentVariables': ?sensitiveEnvironmentVariables,
      'springCloudServiceId': springCloudServiceId,
      'sso': ?pulumi.Input.mapOptionalInputValue<SpringCloudGatewaySso, Map<String, dynamic>>(sso, (value) => value.toMap()),
    };
  }

  factory SpringCloudGatewayArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayArgs(
      apiMetadata: map['apiMetadata'] == null ? null : (SpringCloudGatewayApiMetadata.fromMap((map['apiMetadata'] as Map).cast<String, dynamic>())).input(),
      applicationPerformanceMonitoringIds: map['applicationPerformanceMonitoringIds'] == null ? null : ((map['applicationPerformanceMonitoringIds'] as List).cast<String>()).input(),
      applicationPerformanceMonitoringTypes: map['applicationPerformanceMonitoringTypes'] == null ? null : ((map['applicationPerformanceMonitoringTypes'] as List).cast<String>()).input(),
      clientAuthorization: map['clientAuthorization'] == null ? null : (SpringCloudGatewayClientAuthorization.fromMap((map['clientAuthorization'] as Map).cast<String, dynamic>())).input(),
      cors: map['cors'] == null ? null : (SpringCloudGatewayCors.fromMap((map['cors'] as Map).cast<String, dynamic>())).input(),
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables'] as Map).cast<String, String>()).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly'] as bool).input(),
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount'] as int).input(),
      localResponseCachePerInstance: map['localResponseCachePerInstance'] == null ? null : (SpringCloudGatewayLocalResponseCachePerInstance.fromMap((map['localResponseCachePerInstance'] as Map).cast<String, dynamic>())).input(),
      localResponseCachePerRoute: map['localResponseCachePerRoute'] == null ? null : (SpringCloudGatewayLocalResponseCachePerRoute.fromMap((map['localResponseCachePerRoute'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled'] as bool).input(),
      quota: map['quota'] == null ? null : (SpringCloudGatewayQuota.fromMap((map['quota'] as Map).cast<String, dynamic>())).input(),
      sensitiveEnvironmentVariables: map['sensitiveEnvironmentVariables'] == null ? null : ((map['sensitiveEnvironmentVariables'] as Map).cast<String, String>()).input(),
      springCloudServiceId: (map['springCloudServiceId'] as String).input(),
      sso: map['sso'] == null ? null : (SpringCloudGatewaySso.fromMap((map['sso'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

