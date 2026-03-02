// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_authorization.dart';
import 'application_definition_artifact.dart';
import 'application_deployment_policy.dart';
import 'application_lock_level.dart';
import 'application_management_policy.dart';
import 'application_notification_policy.dart';
import 'application_package_locking_policy_definition.dart';
import 'application_policy.dart';
import 'sku.dart';

/// {@template pulumi_solutions_application_definition_args_doc}
/// The set of arguments for ApplicationDefinition.
/// {@endtemplate}
/// {@macro pulumi_solutions_application_definition_args_doc}
class ApplicationDefinitionArgs {
  /// The name of the managed application definition.
  final pulumi.Input<String>? applicationDefinitionName;
  /// The collection of managed application artifacts. The portal will use the files specified as artifacts to construct the user experience of creating a managed application from a managed application definition.
  final pulumi.Input<List<ApplicationDefinitionArtifact>>? artifacts;
  /// The managed application provider authorizations.
  final pulumi.Input<List<ApplicationAuthorization>>? authorizations;
  /// The createUiDefinition json for the backing template with Microsoft.Solutions/applications resource. It can be a JObject or well-formed JSON string.
  final pulumi.Input<dynamic>? createUiDefinition;
  /// The managed application deployment policy.
  final pulumi.Input<ApplicationDeploymentPolicy>? deploymentPolicy;
  /// The managed application definition description.
  final pulumi.Input<String>? description;
  /// The managed application definition display name.
  final pulumi.Input<String>? displayName;
  /// A value indicating whether the package is enabled or not.
  final pulumi.Input<bool>? isEnabled;
  /// Resource location
  final pulumi.Input<String>? location;
  /// The managed application lock level.
  final pulumi.Input<ApplicationLockLevel> lockLevel;
  /// The managed application locking policy.
  final pulumi.Input<ApplicationPackageLockingPolicyDefinition>? lockingPolicy;
  /// The inline main template json which has resources to be provisioned. It can be a JObject or well-formed JSON string.
  final pulumi.Input<dynamic>? mainTemplate;
  /// ID of the resource that manages this resource.
  final pulumi.Input<String>? managedBy;
  /// The managed application management policy that determines publisher's access to the managed resource group.
  final pulumi.Input<ApplicationManagementPolicy>? managementPolicy;
  /// The managed application notification policy.
  final pulumi.Input<ApplicationNotificationPolicy>? notificationPolicy;
  /// The managed application definition package file Uri. Use this element
  final pulumi.Input<String>? packageFileUri;
  /// The managed application provider policies.
  final pulumi.Input<List<ApplicationPolicy>>? policies;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the resource.
  final pulumi.Input<Sku>? sku;
  /// The storage account id for bring your own storage scenario.
  final pulumi.Input<String>? storageAccountId;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationDefinitionArgs].
  /// [applicationDefinitionName] The name of the managed application definition.
  /// [artifacts] The collection of managed application artifacts. The portal will use the files specified as artifacts to construct the user experience of creating a managed application from a managed application definition.
  /// [authorizations] The managed application provider authorizations.
  /// [createUiDefinition] The createUiDefinition json for the backing template with Microsoft.Solutions/applications resource. It can be a JObject or well-formed JSON string.
  /// [deploymentPolicy] The managed application deployment policy.
  /// [description] The managed application definition description.
  /// [displayName] The managed application definition display name.
  /// [isEnabled] A value indicating whether the package is enabled or not.
  /// [location] Resource location
  /// [lockLevel] The managed application lock level.
  /// [lockingPolicy] The managed application locking policy.
  /// [mainTemplate] The inline main template json which has resources to be provisioned. It can be a JObject or well-formed JSON string.
  /// [managedBy] ID of the resource that manages this resource.
  /// [managementPolicy] The managed application management policy that determines publisher's access to the managed resource group.
  /// [notificationPolicy] The managed application notification policy.
  /// [packageFileUri] The managed application definition package file Uri. Use this element
  /// [policies] The managed application provider policies.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU of the resource.
  /// [storageAccountId] The storage account id for bring your own storage scenario.
  /// [tags] Resource tags
  ApplicationDefinitionArgs({
    this.applicationDefinitionName,
    this.artifacts,
    this.authorizations,
    this.createUiDefinition,
    this.deploymentPolicy,
    this.description,
    this.displayName,
    this.isEnabled,
    this.location,
    required this.lockLevel,
    this.lockingPolicy,
    this.mainTemplate,
    this.managedBy,
    this.managementPolicy,
    this.notificationPolicy,
    this.packageFileUri,
    this.policies,
    required this.resourceGroupName,
    this.sku,
    this.storageAccountId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDefinitionName': ?applicationDefinitionName,
      'artifacts': ?pulumi.Input.mapOptionalInputValue<List<ApplicationDefinitionArtifact>, List<Map<String, dynamic>>>(artifacts, (value) => pulumi.Input.encodeList<ApplicationDefinitionArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authorizations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationAuthorization>, List<Map<String, dynamic>>>(authorizations, (value) => pulumi.Input.encodeList<ApplicationAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createUiDefinition': ?createUiDefinition,
      'deploymentPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationDeploymentPolicy, Map<String, dynamic>>(deploymentPolicy, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'isEnabled': ?isEnabled,
      'location': ?location,
      'lockLevel': pulumi.Input.mapInputValue<ApplicationLockLevel, String>(lockLevel, (value) => value.value),
      'lockingPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationPackageLockingPolicyDefinition, Map<String, dynamic>>(lockingPolicy, (value) => value.toMap()),
      'mainTemplate': ?mainTemplate,
      'managedBy': ?managedBy,
      'managementPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationManagementPolicy, Map<String, dynamic>>(managementPolicy, (value) => value.toMap()),
      'notificationPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationNotificationPolicy, Map<String, dynamic>>(notificationPolicy, (value) => value.toMap()),
      'packageFileUri': ?packageFileUri,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<ApplicationPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<ApplicationPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageAccountId': ?storageAccountId,
      'tags': ?tags,
    };
  }

  factory ApplicationDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationDefinitionArgs(
      applicationDefinitionName: map['applicationDefinitionName'] == null ? null : (map['applicationDefinitionName'] as String).input(),
      artifacts: map['artifacts'] == null ? null : (pulumi.Input.decodeList<ApplicationDefinitionArtifact>(map['artifacts'], (value) => ApplicationDefinitionArtifact.fromMap((value as Map).cast<String, dynamic>()))).input(),
      authorizations: map['authorizations'] == null ? null : (pulumi.Input.decodeList<ApplicationAuthorization>(map['authorizations'], (value) => ApplicationAuthorization.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createUiDefinition: map['createUiDefinition'] == null ? null : (map['createUiDefinition']).input(),
      deploymentPolicy: map['deploymentPolicy'] == null ? null : (ApplicationDeploymentPolicy.fromMap((map['deploymentPolicy'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      lockLevel: (ApplicationLockLevel.fromValue(map['lockLevel'] as String)).input(),
      lockingPolicy: map['lockingPolicy'] == null ? null : (ApplicationPackageLockingPolicyDefinition.fromMap((map['lockingPolicy'] as Map).cast<String, dynamic>())).input(),
      mainTemplate: map['mainTemplate'] == null ? null : (map['mainTemplate']).input(),
      managedBy: map['managedBy'] == null ? null : (map['managedBy'] as String).input(),
      managementPolicy: map['managementPolicy'] == null ? null : (ApplicationManagementPolicy.fromMap((map['managementPolicy'] as Map).cast<String, dynamic>())).input(),
      notificationPolicy: map['notificationPolicy'] == null ? null : (ApplicationNotificationPolicy.fromMap((map['notificationPolicy'] as Map).cast<String, dynamic>())).input(),
      packageFileUri: map['packageFileUri'] == null ? null : (map['packageFileUri'] as String).input(),
      policies: map['policies'] == null ? null : (pulumi.Input.decodeList<ApplicationPolicy>(map['policies'], (value) => ApplicationPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

