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
  final List<ApplicationArtifactResponse> artifacts;
  /// The  read-only authorizations property that is retrieved from the application package.
  final List<ApplicationAuthorizationResponse> authorizations;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The managed application billing details.
  final ApplicationBillingDetailsDefinitionResponse billingDetails;
  /// The client entity that created the JIT request.
  final ApplicationClientDetailsResponse createdBy;
  /// The read-only customer support property that is retrieved from the application package.
  final ApplicationPackageContactResponse customerSupport;
  /// Resource ID
  final String id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// The managed application Jit access policy.
  final ApplicationJitAccessPolicyResponse? jitAccessPolicy;
  /// The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog.
  final String kind;
  /// Resource location
  final String? location;
  /// ID of the resource that manages this resource.
  final String? managedBy;
  /// The managed resource group Id.
  final String? managedResourceGroupId;
  /// The managed application management mode.
  final String managementMode;
  /// Resource name
  final String name;
  /// Name and value pairs that define the managed application outputs.
  final dynamic outputs;
  /// Name and value pairs that define the managed application parameters. It can be a JObject or a well formed JSON string.
  final dynamic parameters;
  /// The plan information.
  final PlanResponse? plan;
  /// The managed application provisioning state.
  final String provisioningState;
  /// The publisher tenant Id.
  final String publisherTenantId;
  /// The SKU of the resource.
  final SkuResponse? sku;
  /// The read-only support URLs property that is retrieved from the application package.
  final ApplicationPackageSupportUrlsResponse supportUrls;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String type;
  /// The client entity that last updated the JIT request.
  final ApplicationClientDetailsResponse updatedBy;

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
    required this.artifacts,
    required this.authorizations,
    required this.azureApiVersion,
    required this.billingDetails,
    required this.createdBy,
    required this.customerSupport,
    required this.id,
    this.identity,
    this.jitAccessPolicy,
    required this.kind,
    this.location,
    this.managedBy,
    this.managedResourceGroupId,
    required this.managementMode,
    required this.name,
    required this.outputs,
    this.parameters,
    this.plan,
    required this.provisioningState,
    required this.publisherTenantId,
    this.sku,
    required this.supportUrls,
    required this.systemData,
    this.tags,
    required this.type,
    required this.updatedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDefinitionId': ?applicationDefinitionId,
      'artifacts': pulumi.Input.encodeList<ApplicationArtifactResponse, Map<String, dynamic>>(artifacts, (value) => value.toMap()),
      'authorizations': pulumi.Input.encodeList<ApplicationAuthorizationResponse, Map<String, dynamic>>(authorizations, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'billingDetails': billingDetails.toMap(),
      'createdBy': createdBy.toMap(),
      'customerSupport': customerSupport.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'jitAccessPolicy': ?jitAccessPolicy?.toMap(),
      'kind': kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'managedResourceGroupId': ?managedResourceGroupId,
      'managementMode': managementMode,
      'name': name,
      'outputs': outputs,
      'parameters': ?parameters,
      'plan': ?plan?.toMap(),
      'provisioningState': provisioningState,
      'publisherTenantId': publisherTenantId,
      'sku': ?sku?.toMap(),
      'supportUrls': supportUrls.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'updatedBy': updatedBy.toMap(),
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      applicationDefinitionId: (() { final guardedValue = map['applicationDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      artifacts: pulumi.Input.decodeList<ApplicationArtifactResponse>(map['artifacts']!, (value) => ApplicationArtifactResponse.fromMap((value as Map).cast<String, dynamic>())),
      authorizations: pulumi.Input.decodeList<ApplicationAuthorizationResponse>(map['authorizations']!, (value) => ApplicationAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      billingDetails: ApplicationBillingDetailsDefinitionResponse.fromMap((map['billingDetails']! as Map).cast<String, dynamic>()),
      createdBy: ApplicationClientDetailsResponse.fromMap((map['createdBy']! as Map).cast<String, dynamic>()),
      customerSupport: ApplicationPackageContactResponse.fromMap((map['customerSupport']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      jitAccessPolicy: (() { final guardedValue = map['jitAccessPolicy']; if (guardedValue == null) return null; return ApplicationJitAccessPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: map['kind'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedResourceGroupId: (() { final guardedValue = map['managedResourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementMode: map['managementMode'] as String,
      name: map['name'] as String,
      outputs: map['outputs'],
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return guardedValue; })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      publisherTenantId: map['publisherTenantId'] as String,
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      supportUrls: ApplicationPackageSupportUrlsResponse.fromMap((map['supportUrls']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      updatedBy: ApplicationClientDetailsResponse.fromMap((map['updatedBy']! as Map).cast<String, dynamic>()),
    );
  }
}

