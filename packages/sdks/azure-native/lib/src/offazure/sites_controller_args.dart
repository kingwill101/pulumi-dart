// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_agent_properties.dart';
import 'site_spn_properties.dart';

/// {@template pulumi_offazure_sites_controller_args_doc}
/// The set of arguments for SitesController.
/// {@endtemplate}
/// {@macro pulumi_offazure_sites_controller_args_doc}
class SitesControllerArgs {
  /// Gets or sets the on-premises agent details.
  final pulumi.Input<SiteAgentProperties>? agentDetails;
  /// Gets or sets the Appliance Name.
  final pulumi.Input<String>? applianceName;
  /// Gets or sets the ARM ID of migration hub solution for SDS.
  final pulumi.Input<String>? discoverySolutionId;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the service principal identity details used by agent for
  /// communication
  /// to the service.
  final pulumi.Input<SiteSpnProperties>? servicePrincipalIdentityDetails;
  /// Site name
  final pulumi.Input<String>? siteName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SitesControllerArgs].
  /// [agentDetails] Gets or sets the on-premises agent details.
  /// [applianceName] Gets or sets the Appliance Name.
  /// [discoverySolutionId] Gets or sets the ARM ID of migration hub solution for SDS.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [servicePrincipalIdentityDetails] Gets or sets the service principal identity details used by agent for
  /// [siteName] Site name
  /// [tags] Resource tags.
  SitesControllerArgs({
    this.agentDetails,
    this.applianceName,
    this.discoverySolutionId,
    this.location,
    required this.resourceGroupName,
    this.servicePrincipalIdentityDetails,
    this.siteName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentDetails': ?pulumi.Input.mapOptionalInputValue<SiteAgentProperties, Map<String, dynamic>>(agentDetails, (value) => value.toMap()),
      'applianceName': ?applianceName,
      'discoverySolutionId': ?discoverySolutionId,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'servicePrincipalIdentityDetails': ?pulumi.Input.mapOptionalInputValue<SiteSpnProperties, Map<String, dynamic>>(servicePrincipalIdentityDetails, (value) => value.toMap()),
      'siteName': ?siteName,
      'tags': ?tags,
    };
  }

  factory SitesControllerArgs.fromMap(Map<String, dynamic> map) {
    return SitesControllerArgs(
      agentDetails: map['agentDetails'] == null ? null : (SiteAgentProperties.fromMap((map['agentDetails'] as Map).cast<String, dynamic>())).input(),
      applianceName: map['applianceName'] == null ? null : (map['applianceName'] as String).input(),
      discoverySolutionId: map['discoverySolutionId'] == null ? null : (map['discoverySolutionId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      servicePrincipalIdentityDetails: map['servicePrincipalIdentityDetails'] == null ? null : (SiteSpnProperties.fromMap((map['servicePrincipalIdentityDetails'] as Map).cast<String, dynamic>())).input(),
      siteName: map['siteName'] == null ? null : (map['siteName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

