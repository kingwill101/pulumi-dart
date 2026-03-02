// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_agent_properties.dart';
import 'site_spn_properties.dart';

/// Class for site appliance properties.
class SiteApplianceProperties {
  /// Gets or sets the on-premises agent details.
  final pulumi.Input<SiteAgentProperties>? agentDetails;
  /// Gets or sets the Appliance Name.
  final pulumi.Input<String>? applianceName;
  /// Gets or sets the service principal identity details used by agent for  communication              to the service.
  final pulumi.Input<SiteSpnProperties>? servicePrincipalIdentityDetails;

  /// Creates a new [SiteApplianceProperties].
  /// [agentDetails] Gets or sets the on-premises agent details.
  /// [applianceName] Gets or sets the Appliance Name.
  /// [servicePrincipalIdentityDetails] Gets or sets the service principal identity details used by agent for  communication              to the service.
  SiteApplianceProperties({
    this.agentDetails,
    this.applianceName,
    this.servicePrincipalIdentityDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentDetails': ?pulumi.Input.mapOptionalInputValue<SiteAgentProperties, Map<String, dynamic>>(agentDetails, (value) => value.toMap()),
      'applianceName': ?applianceName,
      'servicePrincipalIdentityDetails': ?pulumi.Input.mapOptionalInputValue<SiteSpnProperties, Map<String, dynamic>>(servicePrincipalIdentityDetails, (value) => value.toMap()),
    };
  }

  factory SiteApplianceProperties.fromMap(Map<String, dynamic> map) {
    return SiteApplianceProperties(
      agentDetails: map['agentDetails'] == null ? null : (SiteAgentProperties.fromMap((map['agentDetails'] as Map).cast<String, dynamic>())).input(),
      applianceName: map['applianceName'] == null ? null : (map['applianceName'] as String).input(),
      servicePrincipalIdentityDetails: map['servicePrincipalIdentityDetails'] == null ? null : (SiteSpnProperties.fromMap((map['servicePrincipalIdentityDetails'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

