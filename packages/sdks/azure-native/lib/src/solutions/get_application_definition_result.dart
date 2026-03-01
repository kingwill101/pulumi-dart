// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_authorization_response.dart';
import 'application_definition_artifact_response.dart';
import 'application_deployment_policy_response.dart';
import 'application_management_policy_response.dart';
import 'application_notification_policy_response.dart';
import 'application_package_locking_policy_definition_response.dart';
import 'application_policy_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApplicationDefinition.
class GetApplicationDefinitionResult {
  /// The collection of managed application artifacts. The portal will use the files specified as artifacts to construct the user experience of creating a managed application from a managed application definition.
  final List<ApplicationDefinitionArtifactResponse>? artifacts;
  /// The managed application provider authorizations.
  final List<ApplicationAuthorizationResponse>? authorizations;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The createUiDefinition json for the backing template with Microsoft.Solutions/applications resource. It can be a JObject or well-formed JSON string.
  final dynamic createUiDefinition;
  /// The managed application deployment policy.
  final ApplicationDeploymentPolicyResponse? deploymentPolicy;
  /// The managed application definition description.
  final String? description;
  /// The managed application definition display name.
  final String? displayName;
  /// Resource ID
  final String id;
  /// A value indicating whether the package is enabled or not.
  final bool? isEnabled;
  /// Resource location
  final String? location;
  /// The managed application lock level.
  final String lockLevel;
  /// The managed application locking policy.
  final ApplicationPackageLockingPolicyDefinitionResponse? lockingPolicy;
  /// The inline main template json which has resources to be provisioned. It can be a JObject or well-formed JSON string.
  final dynamic mainTemplate;
  /// ID of the resource that manages this resource.
  final String? managedBy;
  /// The managed application management policy that determines publisher's access to the managed resource group.
  final ApplicationManagementPolicyResponse? managementPolicy;
  /// Resource name
  final String name;
  /// The managed application notification policy.
  final ApplicationNotificationPolicyResponse? notificationPolicy;
  /// The managed application definition package file Uri. Use this element
  final String? packageFileUri;
  /// The managed application provider policies.
  final List<ApplicationPolicyResponse>? policies;
  /// The SKU of the resource.
  final SkuResponse? sku;
  /// The storage account id for bring your own storage scenario.
  final String? storageAccountId;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String type;

  /// Creates a new [GetApplicationDefinitionResult].
  /// [artifacts] The collection of managed application artifacts. The portal will use the files specified as artifacts to construct the user experience of creating a managed application from a managed application definition.
  /// [authorizations] The managed application provider authorizations.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createUiDefinition] The createUiDefinition json for the backing template with Microsoft.Solutions/applications resource. It can be a JObject or well-formed JSON string.
  /// [deploymentPolicy] The managed application deployment policy.
  /// [description] The managed application definition description.
  /// [displayName] The managed application definition display name.
  /// [id] Resource ID
  /// [isEnabled] A value indicating whether the package is enabled or not.
  /// [location] Resource location
  /// [lockLevel] The managed application lock level.
  /// [lockingPolicy] The managed application locking policy.
  /// [mainTemplate] The inline main template json which has resources to be provisioned. It can be a JObject or well-formed JSON string.
  /// [managedBy] ID of the resource that manages this resource.
  /// [managementPolicy] The managed application management policy that determines publisher's access to the managed resource group.
  /// [name] Resource name
  /// [notificationPolicy] The managed application notification policy.
  /// [packageFileUri] The managed application definition package file Uri. Use this element
  /// [policies] The managed application provider policies.
  /// [sku] The SKU of the resource.
  /// [storageAccountId] The storage account id for bring your own storage scenario.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags
  /// [type] Resource type
  GetApplicationDefinitionResult({
    this.artifacts,
    this.authorizations,
    required this.azureApiVersion,
    this.createUiDefinition,
    this.deploymentPolicy,
    this.description,
    this.displayName,
    required this.id,
    this.isEnabled,
    this.location,
    required this.lockLevel,
    this.lockingPolicy,
    this.mainTemplate,
    this.managedBy,
    this.managementPolicy,
    required this.name,
    this.notificationPolicy,
    this.packageFileUri,
    this.policies,
    this.sku,
    this.storageAccountId,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifacts': ?artifacts == null ? null : pulumi.Input.encodeList<ApplicationDefinitionArtifactResponse, Map<String, dynamic>>(artifacts!, (value) => value.toMap()),
      'authorizations': ?authorizations == null ? null : pulumi.Input.encodeList<ApplicationAuthorizationResponse, Map<String, dynamic>>(authorizations!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'createUiDefinition': ?createUiDefinition,
      'deploymentPolicy': ?deploymentPolicy == null ? null : deploymentPolicy!.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'isEnabled': ?isEnabled,
      'location': ?location,
      'lockLevel': lockLevel,
      'lockingPolicy': ?lockingPolicy == null ? null : lockingPolicy!.toMap(),
      'mainTemplate': ?mainTemplate,
      'managedBy': ?managedBy,
      'managementPolicy': ?managementPolicy == null ? null : managementPolicy!.toMap(),
      'name': name,
      'notificationPolicy': ?notificationPolicy == null ? null : notificationPolicy!.toMap(),
      'packageFileUri': ?packageFileUri,
      'policies': ?policies == null ? null : pulumi.Input.encodeList<ApplicationPolicyResponse, Map<String, dynamic>>(policies!, (value) => value.toMap()),
      'sku': ?sku == null ? null : sku!.toMap(),
      'storageAccountId': ?storageAccountId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetApplicationDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationDefinitionResult(
      artifacts: map['artifacts'] == null ? null : pulumi.Input.decodeList<ApplicationDefinitionArtifactResponse>(map['artifacts'], (value) => ApplicationDefinitionArtifactResponse.fromMap((value as Map).cast<String, dynamic>())),
      authorizations: map['authorizations'] == null ? null : pulumi.Input.decodeList<ApplicationAuthorizationResponse>(map['authorizations'], (value) => ApplicationAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      createUiDefinition: map['createUiDefinition'] == null ? null : map['createUiDefinition'],
      deploymentPolicy: map['deploymentPolicy'] == null ? null : ApplicationDeploymentPolicyResponse.fromMap((map['deploymentPolicy'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      lockLevel: map['lockLevel'] as String,
      lockingPolicy: map['lockingPolicy'] == null ? null : ApplicationPackageLockingPolicyDefinitionResponse.fromMap((map['lockingPolicy'] as Map).cast<String, dynamic>()),
      mainTemplate: map['mainTemplate'] == null ? null : map['mainTemplate'],
      managedBy: map['managedBy'] == null ? null : map['managedBy'] as String,
      managementPolicy: map['managementPolicy'] == null ? null : ApplicationManagementPolicyResponse.fromMap((map['managementPolicy'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      notificationPolicy: map['notificationPolicy'] == null ? null : ApplicationNotificationPolicyResponse.fromMap((map['notificationPolicy'] as Map).cast<String, dynamic>()),
      packageFileUri: map['packageFileUri'] == null ? null : map['packageFileUri'] as String,
      policies: map['policies'] == null ? null : pulumi.Input.decodeList<ApplicationPolicyResponse>(map['policies'], (value) => ApplicationPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

