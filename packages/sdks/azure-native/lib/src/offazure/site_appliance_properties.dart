// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_agent_properties.dart';
import 'site_spn_properties.dart';

/// Class for site appliance properties.
class SiteApplianceProperties {
  /// Gets or sets the on-premises agent details.
  final pulumi.Input<SiteAgentProperties?>? agentDetails;
  /// Gets or sets the Appliance Name.
  final pulumi.Input<String?>? applianceName;
  /// Gets or sets the service principal identity details used by agent for  communication              to the service.
  final pulumi.Input<SiteSpnProperties?>? servicePrincipalIdentityDetails;

  /// Creates a new [SiteApplianceProperties].
  /// [agentDetails] Gets or sets the on-premises agent details.
  /// [applianceName] Gets or sets the Appliance Name.
  /// [servicePrincipalIdentityDetails] Gets or sets the service principal identity details used by agent for  communication              to the service.
  const SiteApplianceProperties({
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
      agentDetails: (() { final guardedValue = map['agentDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteAgentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      applianceName: (() { final guardedValue = map['applianceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalIdentityDetails: (() { final guardedValue = map['servicePrincipalIdentityDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteSpnProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
