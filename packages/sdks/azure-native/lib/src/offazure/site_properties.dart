// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_agent_properties.dart';
import 'site_spn_properties.dart';

/// Class for site properties.
class SiteProperties {
  /// On-premises agent details.
  final pulumi.Input<SiteAgentProperties>? agentDetails;
  /// Appliance Name.
  final pulumi.Input<String>? applianceName;
  /// ARM ID of migration hub solution for SDS.
  final pulumi.Input<String>? discoverySolutionId;
  /// Service principal identity details used by agent for communication to the service.
  final pulumi.Input<SiteSpnProperties>? servicePrincipalIdentityDetails;

  /// Creates a new [SiteProperties].
  /// [agentDetails] On-premises agent details.
  /// [applianceName] Appliance Name.
  /// [discoverySolutionId] ARM ID of migration hub solution for SDS.
  /// [servicePrincipalIdentityDetails] Service principal identity details used by agent for communication to the service.
  SiteProperties({
    this.agentDetails,
    this.applianceName,
    this.discoverySolutionId,
    this.servicePrincipalIdentityDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentDetails': ?pulumi.Input.mapOptionalInputValue<SiteAgentProperties, Map<String, dynamic>>(agentDetails, (value) => value.toMap()),
      'applianceName': ?applianceName,
      'discoverySolutionId': ?discoverySolutionId,
      'servicePrincipalIdentityDetails': ?pulumi.Input.mapOptionalInputValue<SiteSpnProperties, Map<String, dynamic>>(servicePrincipalIdentityDetails, (value) => value.toMap()),
    };
  }

  factory SiteProperties.fromMap(Map<String, dynamic> map) {
    return SiteProperties(
      agentDetails: map['agentDetails'] == null ? null : (SiteAgentProperties.fromMap((map['agentDetails']! as Map).cast<String, dynamic>())).input(),
      applianceName: map['applianceName'] == null ? null : (map['applianceName']! as String).input(),
      discoverySolutionId: map['discoverySolutionId'] == null ? null : (map['discoverySolutionId']! as String).input(),
      servicePrincipalIdentityDetails: map['servicePrincipalIdentityDetails'] == null ? null : (SiteSpnProperties.fromMap((map['servicePrincipalIdentityDetails']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

