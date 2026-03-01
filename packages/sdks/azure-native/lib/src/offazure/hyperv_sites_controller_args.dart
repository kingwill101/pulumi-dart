// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_agent_properties.dart';
import 'site_spn_properties.dart';

/// {@template pulumi_offazure_hyperv_sites_controller_args_doc}
/// The set of arguments for HypervSitesController.
/// {@endtemplate}
/// {@macro pulumi_offazure_hyperv_sites_controller_args_doc}
class HypervSitesControllerArgs {
  /// Gets or sets the on-premises agent details.
  final pulumi.Input<SiteAgentProperties>? agentDetails;
  /// Gets or sets the Appliance Name.
  final pulumi.Input<String>? applianceName;
  /// Gets or sets the ARM ID of migration hub solution for SDS.
  final pulumi.Input<String>? discoverySolutionId;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The status of the last operation.
  final pulumi.Input<String>? provisioningState;
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

  /// Creates a new [HypervSitesControllerArgs].
  /// [agentDetails] Gets or sets the on-premises agent details.
  /// [applianceName] Gets or sets the Appliance Name.
  /// [discoverySolutionId] Gets or sets the ARM ID of migration hub solution for SDS.
  /// [location] The geo-location where the resource lives
  /// [provisioningState] The status of the last operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [servicePrincipalIdentityDetails] Gets or sets the service principal identity details used by agent for
  /// [siteName] Site name
  /// [tags] Resource tags.
  HypervSitesControllerArgs({
    pulumi.Output<SiteAgentProperties>? agentDetails,
    pulumi.Output<String>? applianceName,
    pulumi.Output<String>? discoverySolutionId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? provisioningState,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<SiteSpnProperties>? servicePrincipalIdentityDetails,
    pulumi.Output<String>? siteName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      agentDetails = pulumi.Input.asOptionalInput<SiteAgentProperties>(agentDetails),
      applianceName = pulumi.Input.asOptionalInput<String>(applianceName),
      discoverySolutionId = pulumi.Input.asOptionalInput<String>(discoverySolutionId),
      location = pulumi.Input.asOptionalInput<String>(location),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      servicePrincipalIdentityDetails = pulumi.Input.asOptionalInput<SiteSpnProperties>(servicePrincipalIdentityDetails),
      siteName = pulumi.Input.asOptionalInput<String>(siteName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentDetails': ?pulumi.Input.mapOptionalInputValue<SiteAgentProperties, Map<String, dynamic>>(agentDetails, (value) => value.toMap()),
      'applianceName': ?applianceName,
      'discoverySolutionId': ?discoverySolutionId,
      'location': ?location,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'servicePrincipalIdentityDetails': ?pulumi.Input.mapOptionalInputValue<SiteSpnProperties, Map<String, dynamic>>(servicePrincipalIdentityDetails, (value) => value.toMap()),
      'siteName': ?siteName,
      'tags': ?tags,
    };
  }

  factory HypervSitesControllerArgs.fromMap(Map<String, dynamic> map) {
    return HypervSitesControllerArgs(
      agentDetails: map['agentDetails'] == null ? null : pulumi.Output.create<SiteAgentProperties>(SiteAgentProperties.fromMap((map['agentDetails'] as Map).cast<String, dynamic>())),
      applianceName: map['applianceName'] == null ? null : pulumi.Output.create<String>(map['applianceName'] as String),
      discoverySolutionId: map['discoverySolutionId'] == null ? null : pulumi.Output.create<String>(map['discoverySolutionId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      servicePrincipalIdentityDetails: map['servicePrincipalIdentityDetails'] == null ? null : pulumi.Output.create<SiteSpnProperties>(SiteSpnProperties.fromMap((map['servicePrincipalIdentityDetails'] as Map).cast<String, dynamic>())),
      siteName: map['siteName'] == null ? null : pulumi.Output.create<String>(map['siteName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

