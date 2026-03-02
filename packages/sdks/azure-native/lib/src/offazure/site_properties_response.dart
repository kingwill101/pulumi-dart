// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_agent_properties_response.dart';
import 'site_spn_properties_response.dart';

/// Class for site properties.
class SitePropertiesResponse {
  /// On-premises agent details.
  final pulumi.Input<SiteAgentPropertiesResponse>? agentDetails;
  /// Appliance Name.
  final pulumi.Input<String>? applianceName;
  /// ARM ID of migration hub solution for SDS.
  final pulumi.Input<String>? discoverySolutionId;
  /// Service endpoint.
  final pulumi.Input<String> serviceEndpoint;
  /// Service principal identity details used by agent for communication to the service.
  final pulumi.Input<SiteSpnPropertiesResponse>? servicePrincipalIdentityDetails;

  /// Creates a new [SitePropertiesResponse].
  /// [agentDetails] On-premises agent details.
  /// [applianceName] Appliance Name.
  /// [discoverySolutionId] ARM ID of migration hub solution for SDS.
  /// [serviceEndpoint] Service endpoint.
  /// [servicePrincipalIdentityDetails] Service principal identity details used by agent for communication to the service.
  SitePropertiesResponse({
    this.agentDetails,
    this.applianceName,
    this.discoverySolutionId,
    required this.serviceEndpoint,
    this.servicePrincipalIdentityDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentDetails': ?pulumi.Input.mapOptionalInputValue<SiteAgentPropertiesResponse, Map<String, dynamic>>(agentDetails, (value) => value.toMap()),
      'applianceName': ?applianceName,
      'discoverySolutionId': ?discoverySolutionId,
      'serviceEndpoint': serviceEndpoint,
      'servicePrincipalIdentityDetails': ?pulumi.Input.mapOptionalInputValue<SiteSpnPropertiesResponse, Map<String, dynamic>>(servicePrincipalIdentityDetails, (value) => value.toMap()),
    };
  }

  factory SitePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SitePropertiesResponse(
      agentDetails: map['agentDetails'] == null ? null : (SiteAgentPropertiesResponse.fromMap((map['agentDetails'] as Map).cast<String, dynamic>())).input(),
      applianceName: map['applianceName'] == null ? null : (map['applianceName'] as String).input(),
      discoverySolutionId: map['discoverySolutionId'] == null ? null : (map['discoverySolutionId'] as String).input(),
      serviceEndpoint: (map['serviceEndpoint'] as String).input(),
      servicePrincipalIdentityDetails: map['servicePrincipalIdentityDetails'] == null ? null : (SiteSpnPropertiesResponse.fromMap((map['servicePrincipalIdentityDetails'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

