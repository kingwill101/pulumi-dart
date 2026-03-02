// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_access_role_response.dart';
import 'resource_provider_management_error_response_message_options_response.dart';
import 'resource_provider_management_expedited_rollout_metadata_response.dart';
import 'service_tree_info_response.dart';

/// The resource provider management.
class ResourceProviderManifestPropertiesManagementResponse {
  /// The authorization owners.
  final pulumi.Input<List<String>>? authorizationOwners;
  /// List of manifest owners for canary.
  final pulumi.Input<List<String>>? canaryManifestOwners;
  /// Options for error response messages.
  final pulumi.Input<ResourceProviderManagementErrorResponseMessageOptionsResponse>? errorResponseMessageOptions;
  /// Metadata for expedited rollout.
  final pulumi.Input<ResourceProviderManagementExpeditedRolloutMetadataResponse>? expeditedRolloutMetadata;
  /// List of expedited rollout submitters.
  final pulumi.Input<List<String>>? expeditedRolloutSubmitters;
  /// The incident contact email.
  final pulumi.Input<String>? incidentContactEmail;
  /// The incident routing service.
  final pulumi.Input<String>? incidentRoutingService;
  /// The incident routing team.
  final pulumi.Input<String>? incidentRoutingTeam;
  /// The manifest owners.
  final pulumi.Input<List<String>>? manifestOwners;
  /// The profit center code for the subscription.
  final pulumi.Input<String>? pcCode;
  /// The profit center program id for the subscription.
  final pulumi.Input<String>? profitCenterProgramId;
  /// The resource access policy.
  final pulumi.Input<String>? resourceAccessPolicy;
  /// The resource access roles.
  final pulumi.Input<List<ResourceAccessRoleResponse>>? resourceAccessRoles;
  /// The schema owners.
  final pulumi.Input<List<String>>? schemaOwners;
  /// The service tree infos.
  final pulumi.Input<List<ServiceTreeInfoResponse>>? serviceTreeInfos;

  /// Creates a new [ResourceProviderManifestPropertiesManagementResponse].
  /// [authorizationOwners] The authorization owners.
  /// [canaryManifestOwners] List of manifest owners for canary.
  /// [errorResponseMessageOptions] Options for error response messages.
  /// [expeditedRolloutMetadata] Metadata for expedited rollout.
  /// [expeditedRolloutSubmitters] List of expedited rollout submitters.
  /// [incidentContactEmail] The incident contact email.
  /// [incidentRoutingService] The incident routing service.
  /// [incidentRoutingTeam] The incident routing team.
  /// [manifestOwners] The manifest owners.
  /// [pcCode] The profit center code for the subscription.
  /// [profitCenterProgramId] The profit center program id for the subscription.
  /// [resourceAccessPolicy] The resource access policy.
  /// [resourceAccessRoles] The resource access roles.
  /// [schemaOwners] The schema owners.
  /// [serviceTreeInfos] The service tree infos.
  ResourceProviderManifestPropertiesManagementResponse({
    this.authorizationOwners,
    this.canaryManifestOwners,
    this.errorResponseMessageOptions,
    this.expeditedRolloutMetadata,
    this.expeditedRolloutSubmitters,
    this.incidentContactEmail,
    this.incidentRoutingService,
    this.incidentRoutingTeam,
    this.manifestOwners,
    this.pcCode,
    this.profitCenterProgramId,
    this.resourceAccessPolicy,
    this.resourceAccessRoles,
    this.schemaOwners,
    this.serviceTreeInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationOwners': ?authorizationOwners,
      'canaryManifestOwners': ?canaryManifestOwners,
      'errorResponseMessageOptions': ?pulumi.Input.mapOptionalInputValue<ResourceProviderManagementErrorResponseMessageOptionsResponse, Map<String, dynamic>>(errorResponseMessageOptions, (value) => value.toMap()),
      'expeditedRolloutMetadata': ?pulumi.Input.mapOptionalInputValue<ResourceProviderManagementExpeditedRolloutMetadataResponse, Map<String, dynamic>>(expeditedRolloutMetadata, (value) => value.toMap()),
      'expeditedRolloutSubmitters': ?expeditedRolloutSubmitters,
      'incidentContactEmail': ?incidentContactEmail,
      'incidentRoutingService': ?incidentRoutingService,
      'incidentRoutingTeam': ?incidentRoutingTeam,
      'manifestOwners': ?manifestOwners,
      'pcCode': ?pcCode,
      'profitCenterProgramId': ?profitCenterProgramId,
      'resourceAccessPolicy': ?resourceAccessPolicy,
      'resourceAccessRoles': ?pulumi.Input.mapOptionalInputValue<List<ResourceAccessRoleResponse>, List<Map<String, dynamic>>>(resourceAccessRoles, (value) => pulumi.Input.encodeList<ResourceAccessRoleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schemaOwners': ?schemaOwners,
      'serviceTreeInfos': ?pulumi.Input.mapOptionalInputValue<List<ServiceTreeInfoResponse>, List<Map<String, dynamic>>>(serviceTreeInfos, (value) => pulumi.Input.encodeList<ServiceTreeInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceProviderManifestPropertiesManagementResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesManagementResponse(
      authorizationOwners: map['authorizationOwners'] == null ? null : ((map['authorizationOwners']! as List).cast<String>()).input(),
      canaryManifestOwners: map['canaryManifestOwners'] == null ? null : ((map['canaryManifestOwners']! as List).cast<String>()).input(),
      errorResponseMessageOptions: map['errorResponseMessageOptions'] == null ? null : (ResourceProviderManagementErrorResponseMessageOptionsResponse.fromMap((map['errorResponseMessageOptions']! as Map).cast<String, dynamic>())).input(),
      expeditedRolloutMetadata: map['expeditedRolloutMetadata'] == null ? null : (ResourceProviderManagementExpeditedRolloutMetadataResponse.fromMap((map['expeditedRolloutMetadata']! as Map).cast<String, dynamic>())).input(),
      expeditedRolloutSubmitters: map['expeditedRolloutSubmitters'] == null ? null : ((map['expeditedRolloutSubmitters']! as List).cast<String>()).input(),
      incidentContactEmail: map['incidentContactEmail'] == null ? null : (map['incidentContactEmail']! as String).input(),
      incidentRoutingService: map['incidentRoutingService'] == null ? null : (map['incidentRoutingService']! as String).input(),
      incidentRoutingTeam: map['incidentRoutingTeam'] == null ? null : (map['incidentRoutingTeam']! as String).input(),
      manifestOwners: map['manifestOwners'] == null ? null : ((map['manifestOwners']! as List).cast<String>()).input(),
      pcCode: map['pcCode'] == null ? null : (map['pcCode']! as String).input(),
      profitCenterProgramId: map['profitCenterProgramId'] == null ? null : (map['profitCenterProgramId']! as String).input(),
      resourceAccessPolicy: map['resourceAccessPolicy'] == null ? null : (map['resourceAccessPolicy']! as String).input(),
      resourceAccessRoles: map['resourceAccessRoles'] == null ? null : (pulumi.Input.decodeList<ResourceAccessRoleResponse>(map['resourceAccessRoles']!, (value) => ResourceAccessRoleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schemaOwners: map['schemaOwners'] == null ? null : ((map['schemaOwners']! as List).cast<String>()).input(),
      serviceTreeInfos: map['serviceTreeInfos'] == null ? null : (pulumi.Input.decodeList<ServiceTreeInfoResponse>(map['serviceTreeInfos']!, (value) => ServiceTreeInfoResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

