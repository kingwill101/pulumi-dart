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
  final int? affinityCookieTtlSec;
  final List<GetRegionBackendServiceBackend>? backends;
  final List<GetRegionBackendServiceCdnPolicy>? cdnPolicies;
  final List<GetRegionBackendServiceCircuitBreaker>? circuitBreakers;
  final int? connectionDrainingTimeoutSec;
  final List<GetRegionBackendServiceConnectionTrackingPolicy>? connectionTrackingPolicies;
  final List<GetRegionBackendServiceConsistentHash>? consistentHashes;
  final String? creationTimestamp;
  final List<GetRegionBackendServiceCustomMetric>? customMetrics;
  final String? deletionPolicy;
  final String? description;
  final List<GetRegionBackendServiceDynamicForwarding>? dynamicForwardings;
  final bool? enableCdn;
  final List<GetRegionBackendServiceFailoverPolicy>? failoverPolicies;
  final String? fingerprint;
  final int? generatedId;
  final List<GetRegionBackendServiceHaPolicy>? haPolicies;
  final List<String>? healthChecks;
  final List<GetRegionBackendServiceIap>? iaps;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ipAddressSelectionPolicy;
  final String? loadBalancingScheme;
  final String? localityLbPolicy;
  final List<GetRegionBackendServiceLogConfig>? logConfigs;
  final String? name;
  final String? network;
  final List<GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy>? networkPassThroughLbTrafficPolicies;
  final List<GetRegionBackendServiceOutlierDetection>? outlierDetections;
  final List<GetRegionBackendServiceParam>? params;
  final String? portName;
  final String? project;
  final String? protocol;
  final String? region;
  final String? securityPolicy;
  final String? selfLink;
  final String? sessionAffinity;
  final List<GetRegionBackendServiceStrongSessionAffinityCooky>? strongSessionAffinityCookies;
  final List<GetRegionBackendServiceSubsetting>? subsettings;
  final int? timeoutSec;
  final List<GetRegionBackendServiceTlsSetting>? tlsSettings;

  /// Creates a new [GetRegionBackendServiceResult].
  /// [affinityCookieTtlSec] Optional.
  /// [backends] Optional.
  /// [cdnPolicies] Optional.
  /// [circuitBreakers] Optional.
  /// [connectionDrainingTimeoutSec] Optional.
  /// [connectionTrackingPolicies] Optional.
  /// [consistentHashes] Optional.
  /// [creationTimestamp] Optional.
  /// [customMetrics] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [dynamicForwardings] Optional.
  /// [enableCdn] Optional.
  /// [failoverPolicies] Optional.
  /// [fingerprint] Optional.
  /// [generatedId] Optional.
  /// [haPolicies] Optional.
  /// [healthChecks] Optional.
  /// [iaps] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddressSelectionPolicy] Optional.
  /// [loadBalancingScheme] Optional.
  /// [localityLbPolicy] Optional.
  /// [logConfigs] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [networkPassThroughLbTrafficPolicies] Optional.
  /// [outlierDetections] Optional.
  /// [params] Optional.
  /// [portName] Optional.
  /// [project] Optional.
  /// [protocol] Optional.
  /// [region] Optional.
  /// [securityPolicy] Optional.
  /// [selfLink] Optional.
  /// [sessionAffinity] Optional.
  /// [strongSessionAffinityCookies] Optional.
  /// [subsettings] Optional.
  /// [timeoutSec] Optional.
  /// [tlsSettings] Optional.
  const GetRegionBackendServiceResult({
    this.affinityCookieTtlSec,
    this.backends,
    this.cdnPolicies,
    this.circuitBreakers,
    this.connectionDrainingTimeoutSec,
    this.connectionTrackingPolicies,
    this.consistentHashes,
    this.creationTimestamp,
    this.customMetrics,
    this.deletionPolicy,
    this.description,
    this.dynamicForwardings,
    this.enableCdn,
    this.failoverPolicies,
    this.fingerprint,
    this.generatedId,
    this.haPolicies,
    this.healthChecks,
    this.iaps,
    this.id,
    this.ipAddressSelectionPolicy,
    this.loadBalancingScheme,
    this.localityLbPolicy,
    this.logConfigs,
    this.name,
    this.network,
    this.networkPassThroughLbTrafficPolicies,
    this.outlierDetections,
    this.params,
    this.portName,
    this.project,
    this.protocol,
    this.region,
    this.securityPolicy,
    this.selfLink,
    this.sessionAffinity,
    this.strongSessionAffinityCookies,
    this.subsettings,
    this.timeoutSec,
    this.tlsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityCookieTtlSec': ?affinityCookieTtlSec,
      'backends': ?(() { final guardedValue = backends; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceBackend, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cdnPolicies': ?(() { final guardedValue = cdnPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceCdnPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'circuitBreakers': ?(() { final guardedValue = circuitBreakers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceCircuitBreaker, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'connectionDrainingTimeoutSec': ?connectionDrainingTimeoutSec,
      'connectionTrackingPolicies': ?(() { final guardedValue = connectionTrackingPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceConnectionTrackingPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'consistentHashes': ?(() { final guardedValue = consistentHashes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceConsistentHash, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'creationTimestamp': ?creationTimestamp,
      'customMetrics': ?(() { final guardedValue = customMetrics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceCustomMetric, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'dynamicForwardings': ?(() { final guardedValue = dynamicForwardings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceDynamicForwarding, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enableCdn': ?enableCdn,
      'failoverPolicies': ?(() { final guardedValue = failoverPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceFailoverPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fingerprint': ?fingerprint,
      'generatedId': ?generatedId,
      'haPolicies': ?(() { final guardedValue = haPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceHaPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'healthChecks': ?healthChecks,
      'iaps': ?(() { final guardedValue = iaps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceIap, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipAddressSelectionPolicy': ?ipAddressSelectionPolicy,
      'loadBalancingScheme': ?loadBalancingScheme,
      'localityLbPolicy': ?localityLbPolicy,
      'logConfigs': ?(() { final guardedValue = logConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceLogConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'network': ?network,
      'networkPassThroughLbTrafficPolicies': ?(() { final guardedValue = networkPassThroughLbTrafficPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'outlierDetections': ?(() { final guardedValue = outlierDetections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceOutlierDetection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'params': ?(() { final guardedValue = params; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceParam, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'portName': ?portName,
      'project': ?project,
      'protocol': ?protocol,
      'region': ?region,
      'securityPolicy': ?securityPolicy,
      'selfLink': ?selfLink,
      'sessionAffinity': ?sessionAffinity,
      'strongSessionAffinityCookies': ?(() { final guardedValue = strongSessionAffinityCookies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceStrongSessionAffinityCooky, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subsettings': ?(() { final guardedValue = subsettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceSubsetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'timeoutSec': ?timeoutSec,
      'tlsSettings': ?(() { final guardedValue = tlsSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionBackendServiceTlsSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetRegionBackendServiceResult.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceResult(
      affinityCookieTtlSec: (() { final guardedValue = map['affinityCookieTtlSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      backends: (() { final guardedValue = map['backends']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceBackend>(guardedValue, (value) => GetRegionBackendServiceBackend.fromMap((value as Map).cast<String, dynamic>())); })(),
      cdnPolicies: (() { final guardedValue = map['cdnPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceCdnPolicy>(guardedValue, (value) => GetRegionBackendServiceCdnPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      circuitBreakers: (() { final guardedValue = map['circuitBreakers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceCircuitBreaker>(guardedValue, (value) => GetRegionBackendServiceCircuitBreaker.fromMap((value as Map).cast<String, dynamic>())); })(),
      connectionDrainingTimeoutSec: (() { final guardedValue = map['connectionDrainingTimeoutSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      connectionTrackingPolicies: (() { final guardedValue = map['connectionTrackingPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceConnectionTrackingPolicy>(guardedValue, (value) => GetRegionBackendServiceConnectionTrackingPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      consistentHashes: (() { final guardedValue = map['consistentHashes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceConsistentHash>(guardedValue, (value) => GetRegionBackendServiceConsistentHash.fromMap((value as Map).cast<String, dynamic>())); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customMetrics: (() { final guardedValue = map['customMetrics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceCustomMetric>(guardedValue, (value) => GetRegionBackendServiceCustomMetric.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dynamicForwardings: (() { final guardedValue = map['dynamicForwardings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceDynamicForwarding>(guardedValue, (value) => GetRegionBackendServiceDynamicForwarding.fromMap((value as Map).cast<String, dynamic>())); })(),
      enableCdn: (() { final guardedValue = map['enableCdn']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      failoverPolicies: (() { final guardedValue = map['failoverPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceFailoverPolicy>(guardedValue, (value) => GetRegionBackendServiceFailoverPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      generatedId: (() { final guardedValue = map['generatedId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      haPolicies: (() { final guardedValue = map['haPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceHaPolicy>(guardedValue, (value) => GetRegionBackendServiceHaPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      healthChecks: (() { final guardedValue = map['healthChecks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      iaps: (() { final guardedValue = map['iaps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceIap>(guardedValue, (value) => GetRegionBackendServiceIap.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddressSelectionPolicy: (() { final guardedValue = map['ipAddressSelectionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancingScheme: (() { final guardedValue = map['loadBalancingScheme']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localityLbPolicy: (() { final guardedValue = map['localityLbPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logConfigs: (() { final guardedValue = map['logConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceLogConfig>(guardedValue, (value) => GetRegionBackendServiceLogConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkPassThroughLbTrafficPolicies: (() { final guardedValue = map['networkPassThroughLbTrafficPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy>(guardedValue, (value) => GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      outlierDetections: (() { final guardedValue = map['outlierDetections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceOutlierDetection>(guardedValue, (value) => GetRegionBackendServiceOutlierDetection.fromMap((value as Map).cast<String, dynamic>())); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceParam>(guardedValue, (value) => GetRegionBackendServiceParam.fromMap((value as Map).cast<String, dynamic>())); })(),
      portName: (() { final guardedValue = map['portName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityPolicy: (() { final guardedValue = map['securityPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sessionAffinity: (() { final guardedValue = map['sessionAffinity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      strongSessionAffinityCookies: (() { final guardedValue = map['strongSessionAffinityCookies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceStrongSessionAffinityCooky>(guardedValue, (value) => GetRegionBackendServiceStrongSessionAffinityCooky.fromMap((value as Map).cast<String, dynamic>())); })(),
      subsettings: (() { final guardedValue = map['subsettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceSubsetting>(guardedValue, (value) => GetRegionBackendServiceSubsetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      timeoutSec: (() { final guardedValue = map['timeoutSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tlsSettings: (() { final guardedValue = map['tlsSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionBackendServiceTlsSetting>(guardedValue, (value) => GetRegionBackendServiceTlsSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
