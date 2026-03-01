// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_access_policy.dart';
import 'resource_access_role.dart';
import 'resource_provider_management_error_response_message_options.dart';
import 'resource_provider_management_expedited_rollout_metadata.dart';
import 'service_tree_info.dart';

/// The resource provider management.
class ResourceTypeRegistrationPropertiesManagement {
  /// The authorization owners.
  final List<String>? authorizationOwners;
  /// List of manifest owners for canary.
  final List<String>? canaryManifestOwners;
  /// Options for error response messages.
  final ResourceProviderManagementErrorResponseMessageOptions? errorResponseMessageOptions;
  /// Metadata for expedited rollout.
  final ResourceProviderManagementExpeditedRolloutMetadata? expeditedRolloutMetadata;
  /// List of expedited rollout submitters.
  final List<String>? expeditedRolloutSubmitters;
  /// The incident contact email.
  final String? incidentContactEmail;
  /// The incident routing service.
  final String? incidentRoutingService;
  /// The incident routing team.
  final String? incidentRoutingTeam;
  /// The manifest owners.
  final List<String>? manifestOwners;
  /// The profit center code for the subscription.
  final String? pcCode;
  /// The profit center program id for the subscription.
  final String? profitCenterProgramId;
  /// The resource access policy.
  final ResourceAccessPolicy? resourceAccessPolicy;
  /// The resource access roles.
  final List<ResourceAccessRole>? resourceAccessRoles;
  /// The schema owners.
  final List<String>? schemaOwners;
  /// The service tree infos.
  final List<ServiceTreeInfo>? serviceTreeInfos;

  /// Creates a new [ResourceTypeRegistrationPropertiesManagement].
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
  ResourceTypeRegistrationPropertiesManagement({
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
      'errorResponseMessageOptions': ?errorResponseMessageOptions == null ? null : errorResponseMessageOptions!.toMap(),
      'expeditedRolloutMetadata': ?expeditedRolloutMetadata == null ? null : expeditedRolloutMetadata!.toMap(),
      'expeditedRolloutSubmitters': ?expeditedRolloutSubmitters,
      'incidentContactEmail': ?incidentContactEmail,
      'incidentRoutingService': ?incidentRoutingService,
      'incidentRoutingTeam': ?incidentRoutingTeam,
      'manifestOwners': ?manifestOwners,
      'pcCode': ?pcCode,
      'profitCenterProgramId': ?profitCenterProgramId,
      'resourceAccessPolicy': ?resourceAccessPolicy == null ? null : resourceAccessPolicy!.value,
      'resourceAccessRoles': ?resourceAccessRoles == null ? null : pulumi.Input.encodeList<ResourceAccessRole, Map<String, dynamic>>(resourceAccessRoles!, (value) => value.toMap()),
      'schemaOwners': ?schemaOwners,
      'serviceTreeInfos': ?serviceTreeInfos == null ? null : pulumi.Input.encodeList<ServiceTreeInfo, Map<String, dynamic>>(serviceTreeInfos!, (value) => value.toMap()),
    };
  }

  factory ResourceTypeRegistrationPropertiesManagement.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesManagement(
      authorizationOwners: map['authorizationOwners'] == null ? null : (map['authorizationOwners'] as List).cast<String>(),
      canaryManifestOwners: map['canaryManifestOwners'] == null ? null : (map['canaryManifestOwners'] as List).cast<String>(),
      errorResponseMessageOptions: map['errorResponseMessageOptions'] == null ? null : ResourceProviderManagementErrorResponseMessageOptions.fromMap((map['errorResponseMessageOptions'] as Map).cast<String, dynamic>()),
      expeditedRolloutMetadata: map['expeditedRolloutMetadata'] == null ? null : ResourceProviderManagementExpeditedRolloutMetadata.fromMap((map['expeditedRolloutMetadata'] as Map).cast<String, dynamic>()),
      expeditedRolloutSubmitters: map['expeditedRolloutSubmitters'] == null ? null : (map['expeditedRolloutSubmitters'] as List).cast<String>(),
      incidentContactEmail: map['incidentContactEmail'] == null ? null : map['incidentContactEmail'] as String,
      incidentRoutingService: map['incidentRoutingService'] == null ? null : map['incidentRoutingService'] as String,
      incidentRoutingTeam: map['incidentRoutingTeam'] == null ? null : map['incidentRoutingTeam'] as String,
      manifestOwners: map['manifestOwners'] == null ? null : (map['manifestOwners'] as List).cast<String>(),
      pcCode: map['pcCode'] == null ? null : map['pcCode'] as String,
      profitCenterProgramId: map['profitCenterProgramId'] == null ? null : map['profitCenterProgramId'] as String,
      resourceAccessPolicy: map['resourceAccessPolicy'] == null ? null : ResourceAccessPolicy.fromValue(map['resourceAccessPolicy'] as String),
      resourceAccessRoles: map['resourceAccessRoles'] == null ? null : pulumi.Input.decodeList<ResourceAccessRole>(map['resourceAccessRoles'], (value) => ResourceAccessRole.fromMap((value as Map).cast<String, dynamic>())),
      schemaOwners: map['schemaOwners'] == null ? null : (map['schemaOwners'] as List).cast<String>(),
      serviceTreeInfos: map['serviceTreeInfos'] == null ? null : pulumi.Input.decodeList<ServiceTreeInfo>(map['serviceTreeInfos'], (value) => ServiceTreeInfo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

