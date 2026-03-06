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
  const GetApplicationDefinitionResult({
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
      'artifacts': ?(() { final guardedValue = artifacts; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApplicationDefinitionArtifactResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'authorizations': ?(() { final guardedValue = authorizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApplicationAuthorizationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'createUiDefinition': ?createUiDefinition,
      'deploymentPolicy': ?deploymentPolicy?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'isEnabled': ?isEnabled,
      'location': ?location,
      'lockLevel': lockLevel,
      'lockingPolicy': ?lockingPolicy?.toMap(),
      'mainTemplate': ?mainTemplate,
      'managedBy': ?managedBy,
      'managementPolicy': ?managementPolicy?.toMap(),
      'name': name,
      'notificationPolicy': ?notificationPolicy?.toMap(),
      'packageFileUri': ?packageFileUri,
      'policies': ?(() { final guardedValue = policies; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApplicationPolicyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sku': ?sku?.toMap(),
      'storageAccountId': ?storageAccountId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetApplicationDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationDefinitionResult(
      artifacts: (() { final guardedValue = map['artifacts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationDefinitionArtifactResponse>(guardedValue, (value) => ApplicationDefinitionArtifactResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      authorizations: (() { final guardedValue = map['authorizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationAuthorizationResponse>(guardedValue, (value) => ApplicationAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      createUiDefinition: (() { final guardedValue = map['createUiDefinition']; if (guardedValue == null) return null; return guardedValue; })(),
      deploymentPolicy: (() { final guardedValue = map['deploymentPolicy']; if (guardedValue == null) return null; return ApplicationDeploymentPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lockLevel: map['lockLevel'] as String,
      lockingPolicy: (() { final guardedValue = map['lockingPolicy']; if (guardedValue == null) return null; return ApplicationPackageLockingPolicyDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      mainTemplate: (() { final guardedValue = map['mainTemplate']; if (guardedValue == null) return null; return guardedValue; })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementPolicy: (() { final guardedValue = map['managementPolicy']; if (guardedValue == null) return null; return ApplicationManagementPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      notificationPolicy: (() { final guardedValue = map['notificationPolicy']; if (guardedValue == null) return null; return ApplicationNotificationPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      packageFileUri: (() { final guardedValue = map['packageFileUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationPolicyResponse>(guardedValue, (value) => ApplicationPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

