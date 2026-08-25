// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_backend.dart';
import 'get_backend_service_cdn_policy.dart';
import 'get_backend_service_circuit_breaker.dart';
import 'get_backend_service_consistent_hash.dart';
import 'get_backend_service_custom_metric.dart';
import 'get_backend_service_dynamic_forwarding.dart';
import 'get_backend_service_iap.dart';
import 'get_backend_service_locality_lb_policy.dart';
import 'get_backend_service_log_config.dart';
import 'get_backend_service_max_stream_duration.dart';
import 'get_backend_service_network_pass_through_lb_traffic_policy.dart';
import 'get_backend_service_outlier_detection.dart';
import 'get_backend_service_param.dart';
import 'get_backend_service_security_setting.dart';
import 'get_backend_service_strong_session_affinity_cooky.dart';
import 'get_backend_service_tls_setting.dart';

/// Result data returned by getBackendService.
class GetBackendServiceResult {
  final int? affinityCookieTtlSec;
  /// The set of backends that serve this Backend Service.
  final List<GetBackendServiceBackend>? backends;
  final List<GetBackendServiceCdnPolicy>? cdnPolicies;
  final List<GetBackendServiceCircuitBreaker>? circuitBreakers;
  final String? compressionMode;
  /// Time for which instance will be drained (not accept new connections, but still work to finish started ones).
  final int? connectionDrainingTimeoutSec;
  final List<GetBackendServiceConsistentHash>? consistentHash;
  final String? creationTimestamp;
  final List<GetBackendServiceCustomMetric>? customMetrics;
  final List<String>? customRequestHeaders;
  final List<String>? customResponseHeaders;
  final String? deletionPolicy;
  /// Textual description for the Backend Service.
  final String? description;
  final List<GetBackendServiceDynamicForwarding>? dynamicForwardings;
  final String? edgeSecurityPolicy;
  /// Whether or not Cloud CDN is enabled on the Backend Service.
  final bool? enableCdn;
  final String? externalManagedMigrationState;
  final double? externalManagedMigrationTestingPercentage;
  /// The fingerprint of the Backend Service.
  final String? fingerprint;
  /// The unique identifier for the resource. This identifier is defined by the server.
  final int? generatedId;
  /// The set of HTTP/HTTPS health checks used by the Backend Service.
  final List<String>? healthChecks;
  final List<GetBackendServiceIap>? iaps;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ipAddressSelectionPolicy;
  final String? loadBalancingScheme;
  final List<GetBackendServiceLocalityLbPolicy>? localityLbPolicies;
  final String? localityLbPolicy;
  final List<GetBackendServiceLogConfig>? logConfigs;
  final List<GetBackendServiceMaxStreamDuration>? maxStreamDurations;
  final String? name;
  final List<GetBackendServiceNetworkPassThroughLbTrafficPolicy>? networkPassThroughLbTrafficPolicies;
  final List<GetBackendServiceOutlierDetection>? outlierDetections;
  final List<GetBackendServiceParam>? params;
  /// The name of a service that has been added to an instance group in this backend.
  final String? portName;
  final String? project;
  /// The protocol for incoming requests.
  final String? protocol;
  final String? securityPolicy;
  final List<GetBackendServiceSecuritySetting>? securitySettings;
  /// The URI of the Backend Service.
  final String? selfLink;
  final String? serviceLbPolicy;
  /// The Backend Service session stickiness configuration.
  final String? sessionAffinity;
  final List<GetBackendServiceStrongSessionAffinityCooky>? strongSessionAffinityCookies;
  /// The number of seconds to wait for a backend to respond to a request before considering the request failed.
  final int? timeoutSec;
  final List<GetBackendServiceTlsSetting>? tlsSettings;

  /// Creates a new [GetBackendServiceResult].
  /// [affinityCookieTtlSec] Optional.
  /// [backends] The set of backends that serve this Backend Service.
  /// [cdnPolicies] Optional.
  /// [circuitBreakers] Optional.
  /// [compressionMode] Optional.
  /// [connectionDrainingTimeoutSec] Time for which instance will be drained (not accept new connections, but still work to finish started ones).
  /// [consistentHash] Optional.
  /// [creationTimestamp] Optional.
  /// [customMetrics] Optional.
  /// [customRequestHeaders] Optional.
  /// [customResponseHeaders] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Textual description for the Backend Service.
  /// [dynamicForwardings] Optional.
  /// [edgeSecurityPolicy] Optional.
  /// [enableCdn] Whether or not Cloud CDN is enabled on the Backend Service.
  /// [externalManagedMigrationState] Optional.
  /// [externalManagedMigrationTestingPercentage] Optional.
  /// [fingerprint] The fingerprint of the Backend Service.
  /// [generatedId] The unique identifier for the resource. This identifier is defined by the server.
  /// [healthChecks] The set of HTTP/HTTPS health checks used by the Backend Service.
  /// [iaps] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddressSelectionPolicy] Optional.
  /// [loadBalancingScheme] Optional.
  /// [localityLbPolicies] Optional.
  /// [localityLbPolicy] Optional.
  /// [logConfigs] Optional.
  /// [maxStreamDurations] Optional.
  /// [name] Optional.
  /// [networkPassThroughLbTrafficPolicies] Optional.
  /// [outlierDetections] Optional.
  /// [params] Optional.
  /// [portName] The name of a service that has been added to an instance group in this backend.
  /// [project] Optional.
  /// [protocol] The protocol for incoming requests.
  /// [securityPolicy] Optional.
  /// [securitySettings] Optional.
  /// [selfLink] The URI of the Backend Service.
  /// [serviceLbPolicy] Optional.
  /// [sessionAffinity] The Backend Service session stickiness configuration.
  /// [strongSessionAffinityCookies] Optional.
  /// [timeoutSec] The number of seconds to wait for a backend to respond to a request before considering the request failed.
  /// [tlsSettings] Optional.
  const GetBackendServiceResult({
    this.affinityCookieTtlSec,
    this.backends,
    this.cdnPolicies,
    this.circuitBreakers,
    this.compressionMode,
    this.connectionDrainingTimeoutSec,
    this.consistentHash,
    this.creationTimestamp,
    this.customMetrics,
    this.customRequestHeaders,
    this.customResponseHeaders,
    this.deletionPolicy,
    this.description,
    this.dynamicForwardings,
    this.edgeSecurityPolicy,
    this.enableCdn,
    this.externalManagedMigrationState,
    this.externalManagedMigrationTestingPercentage,
    this.fingerprint,
    this.generatedId,
    this.healthChecks,
    this.iaps,
    this.id,
    this.ipAddressSelectionPolicy,
    this.loadBalancingScheme,
    this.localityLbPolicies,
    this.localityLbPolicy,
    this.logConfigs,
    this.maxStreamDurations,
    this.name,
    this.networkPassThroughLbTrafficPolicies,
    this.outlierDetections,
    this.params,
    this.portName,
    this.project,
    this.protocol,
    this.securityPolicy,
    this.securitySettings,
    this.selfLink,
    this.serviceLbPolicy,
    this.sessionAffinity,
    this.strongSessionAffinityCookies,
    this.timeoutSec,
    this.tlsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityCookieTtlSec': ?affinityCookieTtlSec,
      'backends': ?(() { final guardedValue = backends; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceBackend, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cdnPolicies': ?(() { final guardedValue = cdnPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceCdnPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'circuitBreakers': ?(() { final guardedValue = circuitBreakers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceCircuitBreaker, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'compressionMode': ?compressionMode,
      'connectionDrainingTimeoutSec': ?connectionDrainingTimeoutSec,
      'consistentHash': ?(() { final guardedValue = consistentHash; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceConsistentHash, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'creationTimestamp': ?creationTimestamp,
      'customMetrics': ?(() { final guardedValue = customMetrics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceCustomMetric, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customRequestHeaders': ?customRequestHeaders,
      'customResponseHeaders': ?customResponseHeaders,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'dynamicForwardings': ?(() { final guardedValue = dynamicForwardings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceDynamicForwarding, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'edgeSecurityPolicy': ?edgeSecurityPolicy,
      'enableCdn': ?enableCdn,
      'externalManagedMigrationState': ?externalManagedMigrationState,
      'externalManagedMigrationTestingPercentage': ?externalManagedMigrationTestingPercentage,
      'fingerprint': ?fingerprint,
      'generatedId': ?generatedId,
      'healthChecks': ?healthChecks,
      'iaps': ?(() { final guardedValue = iaps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceIap, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipAddressSelectionPolicy': ?ipAddressSelectionPolicy,
      'loadBalancingScheme': ?loadBalancingScheme,
      'localityLbPolicies': ?(() { final guardedValue = localityLbPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceLocalityLbPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'localityLbPolicy': ?localityLbPolicy,
      'logConfigs': ?(() { final guardedValue = logConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceLogConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maxStreamDurations': ?(() { final guardedValue = maxStreamDurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceMaxStreamDuration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'networkPassThroughLbTrafficPolicies': ?(() { final guardedValue = networkPassThroughLbTrafficPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceNetworkPassThroughLbTrafficPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'outlierDetections': ?(() { final guardedValue = outlierDetections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceOutlierDetection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'params': ?(() { final guardedValue = params; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceParam, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'portName': ?portName,
      'project': ?project,
      'protocol': ?protocol,
      'securityPolicy': ?securityPolicy,
      'securitySettings': ?(() { final guardedValue = securitySettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceSecuritySetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'serviceLbPolicy': ?serviceLbPolicy,
      'sessionAffinity': ?sessionAffinity,
      'strongSessionAffinityCookies': ?(() { final guardedValue = strongSessionAffinityCookies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceStrongSessionAffinityCooky, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'timeoutSec': ?timeoutSec,
      'tlsSettings': ?(() { final guardedValue = tlsSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendServiceTlsSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetBackendServiceResult.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceResult(
      affinityCookieTtlSec: (() { final guardedValue = map['affinityCookieTtlSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      backends: (() { final guardedValue = map['backends']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceBackend>(guardedValue, (value) => GetBackendServiceBackend.fromMap((value as Map).cast<String, dynamic>())); })(),
      cdnPolicies: (() { final guardedValue = map['cdnPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceCdnPolicy>(guardedValue, (value) => GetBackendServiceCdnPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      circuitBreakers: (() { final guardedValue = map['circuitBreakers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceCircuitBreaker>(guardedValue, (value) => GetBackendServiceCircuitBreaker.fromMap((value as Map).cast<String, dynamic>())); })(),
      compressionMode: (() { final guardedValue = map['compressionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionDrainingTimeoutSec: (() { final guardedValue = map['connectionDrainingTimeoutSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      consistentHash: (() { final guardedValue = map['consistentHash']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceConsistentHash>(guardedValue, (value) => GetBackendServiceConsistentHash.fromMap((value as Map).cast<String, dynamic>())); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customMetrics: (() { final guardedValue = map['customMetrics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceCustomMetric>(guardedValue, (value) => GetBackendServiceCustomMetric.fromMap((value as Map).cast<String, dynamic>())); })(),
      customRequestHeaders: (() { final guardedValue = map['customRequestHeaders']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      customResponseHeaders: (() { final guardedValue = map['customResponseHeaders']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dynamicForwardings: (() { final guardedValue = map['dynamicForwardings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceDynamicForwarding>(guardedValue, (value) => GetBackendServiceDynamicForwarding.fromMap((value as Map).cast<String, dynamic>())); })(),
      edgeSecurityPolicy: (() { final guardedValue = map['edgeSecurityPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableCdn: (() { final guardedValue = map['enableCdn']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      externalManagedMigrationState: (() { final guardedValue = map['externalManagedMigrationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalManagedMigrationTestingPercentage: (() { final guardedValue = map['externalManagedMigrationTestingPercentage']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      generatedId: (() { final guardedValue = map['generatedId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      healthChecks: (() { final guardedValue = map['healthChecks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      iaps: (() { final guardedValue = map['iaps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceIap>(guardedValue, (value) => GetBackendServiceIap.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddressSelectionPolicy: (() { final guardedValue = map['ipAddressSelectionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancingScheme: (() { final guardedValue = map['loadBalancingScheme']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localityLbPolicies: (() { final guardedValue = map['localityLbPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceLocalityLbPolicy>(guardedValue, (value) => GetBackendServiceLocalityLbPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      localityLbPolicy: (() { final guardedValue = map['localityLbPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logConfigs: (() { final guardedValue = map['logConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceLogConfig>(guardedValue, (value) => GetBackendServiceLogConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      maxStreamDurations: (() { final guardedValue = map['maxStreamDurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceMaxStreamDuration>(guardedValue, (value) => GetBackendServiceMaxStreamDuration.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkPassThroughLbTrafficPolicies: (() { final guardedValue = map['networkPassThroughLbTrafficPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceNetworkPassThroughLbTrafficPolicy>(guardedValue, (value) => GetBackendServiceNetworkPassThroughLbTrafficPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      outlierDetections: (() { final guardedValue = map['outlierDetections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceOutlierDetection>(guardedValue, (value) => GetBackendServiceOutlierDetection.fromMap((value as Map).cast<String, dynamic>())); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceParam>(guardedValue, (value) => GetBackendServiceParam.fromMap((value as Map).cast<String, dynamic>())); })(),
      portName: (() { final guardedValue = map['portName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityPolicy: (() { final guardedValue = map['securityPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securitySettings: (() { final guardedValue = map['securitySettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceSecuritySetting>(guardedValue, (value) => GetBackendServiceSecuritySetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceLbPolicy: (() { final guardedValue = map['serviceLbPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sessionAffinity: (() { final guardedValue = map['sessionAffinity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      strongSessionAffinityCookies: (() { final guardedValue = map['strongSessionAffinityCookies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceStrongSessionAffinityCooky>(guardedValue, (value) => GetBackendServiceStrongSessionAffinityCooky.fromMap((value as Map).cast<String, dynamic>())); })(),
      timeoutSec: (() { final guardedValue = map['timeoutSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tlsSettings: (() { final guardedValue = map['tlsSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendServiceTlsSetting>(guardedValue, (value) => GetBackendServiceTlsSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
