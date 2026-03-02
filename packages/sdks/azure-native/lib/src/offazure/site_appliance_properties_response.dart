// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_agent_properties_response.dart';
import 'site_spn_properties_response.dart';

/// Class for site appliance properties.
class SiteAppliancePropertiesResponse {
  /// Gets or sets the on-premises agent details.
  final pulumi.Input<SiteAgentPropertiesResponse>? agentDetails;
  /// Gets or sets the Appliance Name.
  final pulumi.Input<String>? applianceName;
  /// Gets or sets the service principal identity details used by agent for  communication              to the service.
  final pulumi.Input<SiteSpnPropertiesResponse>? servicePrincipalIdentityDetails;

  /// Creates a new [SiteAppliancePropertiesResponse].
  /// [agentDetails] Gets or sets the on-premises agent details.
  /// [applianceName] Gets or sets the Appliance Name.
  /// [servicePrincipalIdentityDetails] Gets or sets the service principal identity details used by agent for  communication              to the service.
  SiteAppliancePropertiesResponse({
    this.agentDetails,
    this.applianceName,
    this.servicePrincipalIdentityDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentDetails': ?pulumi.Input.mapOptionalInputValue<SiteAgentPropertiesResponse, Map<String, dynamic>>(agentDetails, (value) => value.toMap()),
      'applianceName': ?applianceName,
      'servicePrincipalIdentityDetails': ?pulumi.Input.mapOptionalInputValue<SiteSpnPropertiesResponse, Map<String, dynamic>>(servicePrincipalIdentityDetails, (value) => value.toMap()),
    };
  }

  factory SiteAppliancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SiteAppliancePropertiesResponse(
      agentDetails: map['agentDetails'] == null ? null : (SiteAgentPropertiesResponse.fromMap((map['agentDetails']! as Map).cast<String, dynamic>())).input(),
      applianceName: map['applianceName'] == null ? null : (map['applianceName']! as String).input(),
      servicePrincipalIdentityDetails: map['servicePrincipalIdentityDetails'] == null ? null : (SiteSpnPropertiesResponse.fromMap((map['servicePrincipalIdentityDetails']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

