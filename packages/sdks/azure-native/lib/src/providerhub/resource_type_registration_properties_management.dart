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
  final pulumi.Input<List<String>>? authorizationOwners;
  /// List of manifest owners for canary.
  final pulumi.Input<List<String>>? canaryManifestOwners;
  /// Options for error response messages.
  final pulumi.Input<ResourceProviderManagementErrorResponseMessageOptions>? errorResponseMessageOptions;
  /// Metadata for expedited rollout.
  final pulumi.Input<ResourceProviderManagementExpeditedRolloutMetadata>? expeditedRolloutMetadata;
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
  final pulumi.Input<ResourceAccessPolicy>? resourceAccessPolicy;
  /// The resource access roles.
  final pulumi.Input<List<ResourceAccessRole>>? resourceAccessRoles;
  /// The schema owners.
  final pulumi.Input<List<String>>? schemaOwners;
  /// The service tree infos.
  final pulumi.Input<List<ServiceTreeInfo>>? serviceTreeInfos;

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
  const ResourceTypeRegistrationPropertiesManagement({
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
      'errorResponseMessageOptions': ?pulumi.Input.mapOptionalInputValue<ResourceProviderManagementErrorResponseMessageOptions, Map<String, dynamic>>(errorResponseMessageOptions, (value) => value.toMap()),
      'expeditedRolloutMetadata': ?pulumi.Input.mapOptionalInputValue<ResourceProviderManagementExpeditedRolloutMetadata, Map<String, dynamic>>(expeditedRolloutMetadata, (value) => value.toMap()),
      'expeditedRolloutSubmitters': ?expeditedRolloutSubmitters,
      'incidentContactEmail': ?incidentContactEmail,
      'incidentRoutingService': ?incidentRoutingService,
      'incidentRoutingTeam': ?incidentRoutingTeam,
      'manifestOwners': ?manifestOwners,
      'pcCode': ?pcCode,
      'profitCenterProgramId': ?profitCenterProgramId,
      'resourceAccessPolicy': ?pulumi.Input.mapOptionalInputValue<ResourceAccessPolicy, String>(resourceAccessPolicy, (value) => value.wireValue),
      'resourceAccessRoles': ?pulumi.Input.mapOptionalInputValue<List<ResourceAccessRole>, List<Map<String, dynamic>>>(resourceAccessRoles, (value) => pulumi.Input.encodeList<ResourceAccessRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schemaOwners': ?schemaOwners,
      'serviceTreeInfos': ?pulumi.Input.mapOptionalInputValue<List<ServiceTreeInfo>, List<Map<String, dynamic>>>(serviceTreeInfos, (value) => pulumi.Input.encodeList<ServiceTreeInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceTypeRegistrationPropertiesManagement.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesManagement(
      authorizationOwners: (() { final guardedValue = map['authorizationOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      canaryManifestOwners: (() { final guardedValue = map['canaryManifestOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      errorResponseMessageOptions: (() { final guardedValue = map['errorResponseMessageOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderManagementErrorResponseMessageOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expeditedRolloutMetadata: (() { final guardedValue = map['expeditedRolloutMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderManagementExpeditedRolloutMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expeditedRolloutSubmitters: (() { final guardedValue = map['expeditedRolloutSubmitters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      incidentContactEmail: (() { final guardedValue = map['incidentContactEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incidentRoutingService: (() { final guardedValue = map['incidentRoutingService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incidentRoutingTeam: (() { final guardedValue = map['incidentRoutingTeam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifestOwners: (() { final guardedValue = map['manifestOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pcCode: (() { final guardedValue = map['pcCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profitCenterProgramId: (() { final guardedValue = map['profitCenterProgramId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceAccessPolicy: (() { final guardedValue = map['resourceAccessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceAccessPolicy.fromValue(guardedValue as String)); })(),
      resourceAccessRoles: (() { final guardedValue = map['resourceAccessRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceAccessRole>(guardedValue, (value) => ResourceAccessRole.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schemaOwners: (() { final guardedValue = map['schemaOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceTreeInfos: (() { final guardedValue = map['serviceTreeInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceTreeInfo>(guardedValue, (value) => ServiceTreeInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
