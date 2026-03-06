// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_topic_spaces_configuration_dynamic_routing_enrichment.dart';
import 'namespace_topic_spaces_configuration_static_routing_enrichment.dart';

class NamespaceTopicSpacesConfiguration {
  /// Specifies a list of alternative sources for the client authentication name from the client certificate. Possible values are `ClientCertificateDns`, `ClientCertificateEmail`, `ClientCertificateIp`, `ClientCertificateSubject` and `ClientCertificateUri`.
  final pulumi.Input<List<String>>? alternativeAuthenticationNameSources;
  /// One or more `dynamic_routing_enrichment` blocks as defined below.
  final pulumi.Input<List<NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment>>? dynamicRoutingEnrichments;
  /// Specifies the maximum number of client sessions per authentication name. Valid values can be between `1` and `100`.
  final pulumi.Input<int>? maximumClientSessionsPerAuthenticationName;
  /// Specifies the maximum session expiry interval allowed for all MQTT clients connecting to the Event Grid namespace. Valid values can be between `1` and `8`.
  final pulumi.Input<int>? maximumSessionExpiryInHours;
  /// Specifies the Event Grid topic resource ID to route messages to.
  final pulumi.Input<String>? routeTopicId;
  /// One or more `static_routing_enrichment` blocks as defined below.
  final pulumi.Input<List<NamespaceTopicSpacesConfigurationStaticRoutingEnrichment>>? staticRoutingEnrichments;

  /// Creates a new [NamespaceTopicSpacesConfiguration].
  /// [alternativeAuthenticationNameSources] Specifies a list of alternative sources for the client authentication name from the client certificate. Possible values are `ClientCertificateDns`, `ClientCertificateEmail`, `ClientCertificateIp`, `ClientCertificateSubject` and `ClientCertificateUri`.
  /// [dynamicRoutingEnrichments] One or more `dynamic_routing_enrichment` blocks as defined below.
  /// [maximumClientSessionsPerAuthenticationName] Specifies the maximum number of client sessions per authentication name. Valid values can be between `1` and `100`.
  /// [maximumSessionExpiryInHours] Specifies the maximum session expiry interval allowed for all MQTT clients connecting to the Event Grid namespace. Valid values can be between `1` and `8`.
  /// [routeTopicId] Specifies the Event Grid topic resource ID to route messages to.
  /// [staticRoutingEnrichments] One or more `static_routing_enrichment` blocks as defined below.
  const NamespaceTopicSpacesConfiguration({
    this.alternativeAuthenticationNameSources,
    this.dynamicRoutingEnrichments,
    this.maximumClientSessionsPerAuthenticationName,
    this.maximumSessionExpiryInHours,
    this.routeTopicId,
    this.staticRoutingEnrichments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternativeAuthenticationNameSources': ?alternativeAuthenticationNameSources,
      'dynamicRoutingEnrichments': ?pulumi.Input.mapOptionalInputValue<List<NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment>, List<Map<String, dynamic>>>(dynamicRoutingEnrichments, (value) => pulumi.Input.encodeList<NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maximumClientSessionsPerAuthenticationName': ?maximumClientSessionsPerAuthenticationName,
      'maximumSessionExpiryInHours': ?maximumSessionExpiryInHours,
      'routeTopicId': ?routeTopicId,
      'staticRoutingEnrichments': ?pulumi.Input.mapOptionalInputValue<List<NamespaceTopicSpacesConfigurationStaticRoutingEnrichment>, List<Map<String, dynamic>>>(staticRoutingEnrichments, (value) => pulumi.Input.encodeList<NamespaceTopicSpacesConfigurationStaticRoutingEnrichment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NamespaceTopicSpacesConfiguration.fromMap(Map<String, dynamic> map) {
    return NamespaceTopicSpacesConfiguration(
      alternativeAuthenticationNameSources: (() { final guardedValue = map['alternativeAuthenticationNameSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dynamicRoutingEnrichments: (() { final guardedValue = map['dynamicRoutingEnrichments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment>(guardedValue, (value) => NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maximumClientSessionsPerAuthenticationName: (() { final guardedValue = map['maximumClientSessionsPerAuthenticationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maximumSessionExpiryInHours: (() { final guardedValue = map['maximumSessionExpiryInHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      routeTopicId: (() { final guardedValue = map['routeTopicId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticRoutingEnrichments: (() { final guardedValue = map['staticRoutingEnrichments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceTopicSpacesConfigurationStaticRoutingEnrichment>(guardedValue, (value) => NamespaceTopicSpacesConfigurationStaticRoutingEnrichment.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

