// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_backend.dart';
import 'get_region_backend_service_cdn_policy.dart';
import 'get_region_backend_service_circuit_breaker.dart';
import 'get_region_backend_service_connection_tracking_policy.dart';
import 'get_region_backend_service_consistent_hash.dart';
import 'get_region_backend_service_custom_metric.dart';
import 'get_region_backend_service_dynamic_forwarding.dart';
import 'get_region_backend_service_failover_policy.dart';
import 'get_region_backend_service_ha_policy.dart';
import 'get_region_backend_service_iap.dart';
import 'get_region_backend_service_log_config.dart';
import 'get_region_backend_service_network_pass_through_lb_traffic_policy.dart';
import 'get_region_backend_service_outlier_detection.dart';
import 'get_region_backend_service_param.dart';
import 'get_region_backend_service_strong_session_affinity_cooky.dart';
import 'get_region_backend_service_subsetting.dart';
import 'get_region_backend_service_tls_setting.dart';

/// Result data returned by getRegionBackendService.
class GetRegionBackendServiceResult {
  final int affinityCookieTtlSec;
  final List<GetRegionBackendServiceBackend> backends;
  final List<GetRegionBackendServiceCdnPolicy> cdnPolicies;
  final List<GetRegionBackendServiceCircuitBreaker> circuitBreakers;
  final int connectionDrainingTimeoutSec;
  final List<GetRegionBackendServiceConnectionTrackingPolicy> connectionTrackingPolicies;
  final List<GetRegionBackendServiceConsistentHash> consistentHashes;
  final String creationTimestamp;
  final List<GetRegionBackendServiceCustomMetric> customMetrics;
  final String description;
  final List<GetRegionBackendServiceDynamicForwarding> dynamicForwardings;
  final bool enableCdn;
  final List<GetRegionBackendServiceFailoverPolicy> failoverPolicies;
  final String fingerprint;
  final int generatedId;
  final List<GetRegionBackendServiceHaPolicy> haPolicies;
  final List<String> healthChecks;
  final List<GetRegionBackendServiceIap> iaps;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ipAddressSelectionPolicy;
  final String loadBalancingScheme;
  final String localityLbPolicy;
  final List<GetRegionBackendServiceLogConfig> logConfigs;
  final String name;
  final String network;
  final List<GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy> networkPassThroughLbTrafficPolicies;
  final List<GetRegionBackendServiceOutlierDetection> outlierDetections;
  final List<GetRegionBackendServiceParam> params;
  final String portName;
  final String? project;
  final String protocol;
  final String? region;
  final String securityPolicy;
  final String selfLink;
  final String sessionAffinity;
  final List<GetRegionBackendServiceStrongSessionAffinityCooky> strongSessionAffinityCookies;
  final List<GetRegionBackendServiceSubsetting> subsettings;
  final int timeoutSec;
  final List<GetRegionBackendServiceTlsSetting> tlsSettings;

  /// Creates a new [GetRegionBackendServiceResult].
  /// [affinityCookieTtlSec] Required.
  /// [backends] Required.
  /// [cdnPolicies] Required.
  /// [circuitBreakers] Required.
  /// [connectionDrainingTimeoutSec] Required.
  /// [connectionTrackingPolicies] Required.
  /// [consistentHashes] Required.
  /// [creationTimestamp] Required.
  /// [customMetrics] Required.
  /// [description] Required.
  /// [dynamicForwardings] Required.
  /// [enableCdn] Required.
  /// [failoverPolicies] Required.
  /// [fingerprint] Required.
  /// [generatedId] Required.
  /// [haPolicies] Required.
  /// [healthChecks] Required.
  /// [iaps] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddressSelectionPolicy] Required.
  /// [loadBalancingScheme] Required.
  /// [localityLbPolicy] Required.
  /// [logConfigs] Required.
  /// [name] Required.
  /// [network] Required.
  /// [networkPassThroughLbTrafficPolicies] Required.
  /// [outlierDetections] Required.
  /// [params] Required.
  /// [portName] Required.
  /// [project] Optional.
  /// [protocol] Required.
  /// [region] Optional.
  /// [securityPolicy] Required.
  /// [selfLink] Required.
  /// [sessionAffinity] Required.
  /// [strongSessionAffinityCookies] Required.
  /// [subsettings] Required.
  /// [timeoutSec] Required.
  /// [tlsSettings] Required.
  GetRegionBackendServiceResult({
    required this.affinityCookieTtlSec,
    required this.backends,
    required this.cdnPolicies,
    required this.circuitBreakers,
    required this.connectionDrainingTimeoutSec,
    required this.connectionTrackingPolicies,
    required this.consistentHashes,
    required this.creationTimestamp,
    required this.customMetrics,
    required this.description,
    required this.dynamicForwardings,
    required this.enableCdn,
    required this.failoverPolicies,
    required this.fingerprint,
    required this.generatedId,
    required this.haPolicies,
    required this.healthChecks,
    required this.iaps,
    required this.id,
    required this.ipAddressSelectionPolicy,
    required this.loadBalancingScheme,
    required this.localityLbPolicy,
    required this.logConfigs,
    required this.name,
    required this.network,
    required this.networkPassThroughLbTrafficPolicies,
    required this.outlierDetections,
    required this.params,
    required this.portName,
    this.project,
    required this.protocol,
    this.region,
    required this.securityPolicy,
    required this.selfLink,
    required this.sessionAffinity,
    required this.strongSessionAffinityCookies,
    required this.subsettings,
    required this.timeoutSec,
    required this.tlsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityCookieTtlSec': affinityCookieTtlSec,
      'backends': pulumi.Input.encodeList<GetRegionBackendServiceBackend, Map<String, dynamic>>(backends, (value) => value.toMap()),
      'cdnPolicies': pulumi.Input.encodeList<GetRegionBackendServiceCdnPolicy, Map<String, dynamic>>(cdnPolicies, (value) => value.toMap()),
      'circuitBreakers': pulumi.Input.encodeList<GetRegionBackendServiceCircuitBreaker, Map<String, dynamic>>(circuitBreakers, (value) => value.toMap()),
      'connectionDrainingTimeoutSec': connectionDrainingTimeoutSec,
      'connectionTrackingPolicies': pulumi.Input.encodeList<GetRegionBackendServiceConnectionTrackingPolicy, Map<String, dynamic>>(connectionTrackingPolicies, (value) => value.toMap()),
      'consistentHashes': pulumi.Input.encodeList<GetRegionBackendServiceConsistentHash, Map<String, dynamic>>(consistentHashes, (value) => value.toMap()),
      'creationTimestamp': creationTimestamp,
      'customMetrics': pulumi.Input.encodeList<GetRegionBackendServiceCustomMetric, Map<String, dynamic>>(customMetrics, (value) => value.toMap()),
      'description': description,
      'dynamicForwardings': pulumi.Input.encodeList<GetRegionBackendServiceDynamicForwarding, Map<String, dynamic>>(dynamicForwardings, (value) => value.toMap()),
      'enableCdn': enableCdn,
      'failoverPolicies': pulumi.Input.encodeList<GetRegionBackendServiceFailoverPolicy, Map<String, dynamic>>(failoverPolicies, (value) => value.toMap()),
      'fingerprint': fingerprint,
      'generatedId': generatedId,
      'haPolicies': pulumi.Input.encodeList<GetRegionBackendServiceHaPolicy, Map<String, dynamic>>(haPolicies, (value) => value.toMap()),
      'healthChecks': healthChecks,
      'iaps': pulumi.Input.encodeList<GetRegionBackendServiceIap, Map<String, dynamic>>(iaps, (value) => value.toMap()),
      'id': id,
      'ipAddressSelectionPolicy': ipAddressSelectionPolicy,
      'loadBalancingScheme': loadBalancingScheme,
      'localityLbPolicy': localityLbPolicy,
      'logConfigs': pulumi.Input.encodeList<GetRegionBackendServiceLogConfig, Map<String, dynamic>>(logConfigs, (value) => value.toMap()),
      'name': name,
      'network': network,
      'networkPassThroughLbTrafficPolicies': pulumi.Input.encodeList<GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy, Map<String, dynamic>>(networkPassThroughLbTrafficPolicies, (value) => value.toMap()),
      'outlierDetections': pulumi.Input.encodeList<GetRegionBackendServiceOutlierDetection, Map<String, dynamic>>(outlierDetections, (value) => value.toMap()),
      'params': pulumi.Input.encodeList<GetRegionBackendServiceParam, Map<String, dynamic>>(params, (value) => value.toMap()),
      'portName': portName,
      'project': ?project,
      'protocol': protocol,
      'region': ?region,
      'securityPolicy': securityPolicy,
      'selfLink': selfLink,
      'sessionAffinity': sessionAffinity,
      'strongSessionAffinityCookies': pulumi.Input.encodeList<GetRegionBackendServiceStrongSessionAffinityCooky, Map<String, dynamic>>(strongSessionAffinityCookies, (value) => value.toMap()),
      'subsettings': pulumi.Input.encodeList<GetRegionBackendServiceSubsetting, Map<String, dynamic>>(subsettings, (value) => value.toMap()),
      'timeoutSec': timeoutSec,
      'tlsSettings': pulumi.Input.encodeList<GetRegionBackendServiceTlsSetting, Map<String, dynamic>>(tlsSettings, (value) => value.toMap()),
    };
  }

  factory GetRegionBackendServiceResult.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceResult(
      affinityCookieTtlSec: map['affinityCookieTtlSec'] as int,
      backends: pulumi.Input.decodeList<GetRegionBackendServiceBackend>(map['backends'], (value) => GetRegionBackendServiceBackend.fromMap((value as Map).cast<String, dynamic>())),
      cdnPolicies: pulumi.Input.decodeList<GetRegionBackendServiceCdnPolicy>(map['cdnPolicies'], (value) => GetRegionBackendServiceCdnPolicy.fromMap((value as Map).cast<String, dynamic>())),
      circuitBreakers: pulumi.Input.decodeList<GetRegionBackendServiceCircuitBreaker>(map['circuitBreakers'], (value) => GetRegionBackendServiceCircuitBreaker.fromMap((value as Map).cast<String, dynamic>())),
      connectionDrainingTimeoutSec: map['connectionDrainingTimeoutSec'] as int,
      connectionTrackingPolicies: pulumi.Input.decodeList<GetRegionBackendServiceConnectionTrackingPolicy>(map['connectionTrackingPolicies'], (value) => GetRegionBackendServiceConnectionTrackingPolicy.fromMap((value as Map).cast<String, dynamic>())),
      consistentHashes: pulumi.Input.decodeList<GetRegionBackendServiceConsistentHash>(map['consistentHashes'], (value) => GetRegionBackendServiceConsistentHash.fromMap((value as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] as String,
      customMetrics: pulumi.Input.decodeList<GetRegionBackendServiceCustomMetric>(map['customMetrics'], (value) => GetRegionBackendServiceCustomMetric.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      dynamicForwardings: pulumi.Input.decodeList<GetRegionBackendServiceDynamicForwarding>(map['dynamicForwardings'], (value) => GetRegionBackendServiceDynamicForwarding.fromMap((value as Map).cast<String, dynamic>())),
      enableCdn: map['enableCdn'] as bool,
      failoverPolicies: pulumi.Input.decodeList<GetRegionBackendServiceFailoverPolicy>(map['failoverPolicies'], (value) => GetRegionBackendServiceFailoverPolicy.fromMap((value as Map).cast<String, dynamic>())),
      fingerprint: map['fingerprint'] as String,
      generatedId: map['generatedId'] as int,
      haPolicies: pulumi.Input.decodeList<GetRegionBackendServiceHaPolicy>(map['haPolicies'], (value) => GetRegionBackendServiceHaPolicy.fromMap((value as Map).cast<String, dynamic>())),
      healthChecks: (map['healthChecks'] as List).cast<String>(),
      iaps: pulumi.Input.decodeList<GetRegionBackendServiceIap>(map['iaps'], (value) => GetRegionBackendServiceIap.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipAddressSelectionPolicy: map['ipAddressSelectionPolicy'] as String,
      loadBalancingScheme: map['loadBalancingScheme'] as String,
      localityLbPolicy: map['localityLbPolicy'] as String,
      logConfigs: pulumi.Input.decodeList<GetRegionBackendServiceLogConfig>(map['logConfigs'], (value) => GetRegionBackendServiceLogConfig.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      network: map['network'] as String,
      networkPassThroughLbTrafficPolicies: pulumi.Input.decodeList<GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy>(map['networkPassThroughLbTrafficPolicies'], (value) => GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy.fromMap((value as Map).cast<String, dynamic>())),
      outlierDetections: pulumi.Input.decodeList<GetRegionBackendServiceOutlierDetection>(map['outlierDetections'], (value) => GetRegionBackendServiceOutlierDetection.fromMap((value as Map).cast<String, dynamic>())),
      params: pulumi.Input.decodeList<GetRegionBackendServiceParam>(map['params'], (value) => GetRegionBackendServiceParam.fromMap((value as Map).cast<String, dynamic>())),
      portName: map['portName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      protocol: map['protocol'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityPolicy: map['securityPolicy'] as String,
      selfLink: map['selfLink'] as String,
      sessionAffinity: map['sessionAffinity'] as String,
      strongSessionAffinityCookies: pulumi.Input.decodeList<GetRegionBackendServiceStrongSessionAffinityCooky>(map['strongSessionAffinityCookies'], (value) => GetRegionBackendServiceStrongSessionAffinityCooky.fromMap((value as Map).cast<String, dynamic>())),
      subsettings: pulumi.Input.decodeList<GetRegionBackendServiceSubsetting>(map['subsettings'], (value) => GetRegionBackendServiceSubsetting.fromMap((value as Map).cast<String, dynamic>())),
      timeoutSec: map['timeoutSec'] as int,
      tlsSettings: pulumi.Input.decodeList<GetRegionBackendServiceTlsSetting>(map['tlsSettings'], (value) => GetRegionBackendServiceTlsSetting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

