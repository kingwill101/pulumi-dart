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
  const SiteProperties({
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
      agentDetails: (() { final guardedValue = map['agentDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteAgentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      applianceName: (() { final guardedValue = map['applianceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoverySolutionId: (() { final guardedValue = map['discoverySolutionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalIdentityDetails: (() { final guardedValue = map['servicePrincipalIdentityDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteSpnProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

