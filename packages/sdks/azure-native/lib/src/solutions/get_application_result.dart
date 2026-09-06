// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_artifact_response.dart';
import 'application_authorization_response.dart';
import 'application_billing_details_definition_response.dart';
import 'application_client_details_response.dart';
import 'application_jit_access_policy_response.dart';
import 'application_package_contact_response.dart';
import 'application_package_support_urls_response.dart';
import 'identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApplication.
class GetApplicationResult {
  /// The fully qualified path of managed application definition Id.
  final String? applicationDefinitionId;
  /// The collection of managed application artifacts.
  final List<ApplicationArtifactResponse>? artifacts;
  /// The  read-only authorizations property that is retrieved from the application package.
  final List<ApplicationAuthorizationResponse>? authorizations;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The managed application billing details.
  final ApplicationBillingDetailsDefinitionResponse? billingDetails;
  /// The client entity that created the JIT request.
  final ApplicationClientDetailsResponse? createdBy;
  /// The read-only customer support property that is retrieved from the application package.
  final ApplicationPackageContactResponse? customerSupport;
  /// Resource ID
  final String? id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// The managed application Jit access policy.
  final ApplicationJitAccessPolicyResponse? jitAccessPolicy;
  /// The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog.
  final String? kind;
  /// Resource location
  final String? location;
  /// ID of the resource that manages this resource.
  final String? managedBy;
  /// The managed resource group Id.
  final String? managedResourceGroupId;
  /// The managed application management mode.
  final String? managementMode;
  /// Resource name
  final String? name;
  /// Name and value pairs that define the managed application outputs.
  final dynamic outputs;
  /// Name and value pairs that define the managed application parameters. It can be a JObject or a well formed JSON string.
  final dynamic parameters;
  /// The plan information.
  final PlanResponse? plan;
  /// The managed application provisioning state.
  final String? provisioningState;
  /// The publisher tenant Id.
  final String? publisherTenantId;
  /// The SKU of the resource.
  final SkuResponse? sku;
  /// The read-only support URLs property that is retrieved from the application package.
  final ApplicationPackageSupportUrlsResponse? supportUrls;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String? type;
  /// The client entity that last updated the JIT request.
  final ApplicationClientDetailsResponse? updatedBy;

  /// Creates a new [GetApplicationResult].
  /// [applicationDefinitionId] The fully qualified path of managed application definition Id.
  /// [artifacts] The collection of managed application artifacts.
  /// [authorizations] The  read-only authorizations property that is retrieved from the application package.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [billingDetails] The managed application billing details.
  /// [createdBy] The client entity that created the JIT request.
  /// [customerSupport] The read-only customer support property that is retrieved from the application package.
  /// [id] Resource ID
  /// [identity] The identity of the resource.
  /// [jitAccessPolicy] The managed application Jit access policy.
  /// [kind] The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog.
  /// [location] Resource location
  /// [managedBy] ID of the resource that manages this resource.
  /// [managedResourceGroupId] The managed resource group Id.
  /// [managementMode] The managed application management mode.
  /// [name] Resource name
  /// [outputs] Name and value pairs that define the managed application outputs.
  /// [parameters] Name and value pairs that define the managed application parameters. It can be a JObject or a well formed JSON string.
  /// [plan] The plan information.
  /// [provisioningState] The managed application provisioning state.
  /// [publisherTenantId] The publisher tenant Id.
  /// [sku] The SKU of the resource.
  /// [supportUrls] The read-only support URLs property that is retrieved from the application package.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags
  /// [type] Resource type
  /// [updatedBy] The client entity that last updated the JIT request.
  const GetApplicationResult({
    this.applicationDefinitionId,
    this.artifacts,
    this.authorizations,
    this.azureApiVersion,
    this.billingDetails,
    this.createdBy,
    this.customerSupport,
    this.id,
    this.identity,
    this.jitAccessPolicy,
    this.kind,
    this.location,
    this.managedBy,
    this.managedResourceGroupId,
    this.managementMode,
    this.name,
    this.outputs,
    this.parameters,
    this.plan,
    this.provisioningState,
    this.publisherTenantId,
    this.sku,
    this.supportUrls,
    this.systemData,
    this.tags,
    this.type,
    this.updatedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDefinitionId': ?applicationDefinitionId,
      'artifacts': ?(() { final guardedValue = artifacts; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApplicationArtifactResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'authorizations': ?(() { final guardedValue = authorizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApplicationAuthorizationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'billingDetails': ?billingDetails?.toMap(),
      'createdBy': ?createdBy?.toMap(),
      'customerSupport': ?customerSupport?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'jitAccessPolicy': ?jitAccessPolicy?.toMap(),
      'kind': ?kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'managedResourceGroupId': ?managedResourceGroupId,
      'managementMode': ?managementMode,
      'name': ?name,
      'outputs': ?outputs,
      'parameters': ?parameters,
      'plan': ?plan?.toMap(),
      'provisioningState': ?provisioningState,
      'publisherTenantId': ?publisherTenantId,
      'sku': ?sku?.toMap(),
      'supportUrls': ?supportUrls?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'updatedBy': ?updatedBy?.toMap(),
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      applicationDefinitionId: (() { final guardedValue = map['applicationDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      artifacts: (() { final guardedValue = map['artifacts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationArtifactResponse>(guardedValue, (value) => ApplicationArtifactResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      authorizations: (() { final guardedValue = map['authorizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationAuthorizationResponse>(guardedValue, (value) => ApplicationAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      billingDetails: (() { final guardedValue = map['billingDetails']; if (guardedValue == null) return null; return ApplicationBillingDetailsDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return ApplicationClientDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      customerSupport: (() { final guardedValue = map['customerSupport']; if (guardedValue == null) return null; return ApplicationPackageContactResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      jitAccessPolicy: (() { final guardedValue = map['jitAccessPolicy']; if (guardedValue == null) return null; return ApplicationJitAccessPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedResourceGroupId: (() { final guardedValue = map['managedResourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementMode: (() { final guardedValue = map['managementMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return guardedValue; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return guardedValue; })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publisherTenantId: (() { final guardedValue = map['publisherTenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      supportUrls: (() { final guardedValue = map['supportUrls']; if (guardedValue == null) return null; return ApplicationPackageSupportUrlsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return ApplicationClientDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
