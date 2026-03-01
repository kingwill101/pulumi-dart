// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_service_authentication.dart';
import 'fhir_service_cors.dart';
import 'fhir_service_identity.dart';
import 'fhir_service_oci_artifact.dart';

/// Input properties used for looking up and filtering FhirService resources.
class FhirServiceState {
  /// A list of the access policies of the service instance.
  final pulumi.Input<List<String>>? accessPolicyObjectIds;
  /// An `authentication` block as defined below.
  final pulumi.Input<FhirServiceAuthentication>? authentication;
  /// Specifies the name of the storage account which the operation configuration information is exported to.
  final pulumi.Input<String>? configurationExportStorageAccountName;
  /// A list of azure container registry settings used for convert data operation of the service instance.
  final pulumi.Input<List<String>>? containerRegistryLoginServerUrls;
  /// A `cors` block as defined below.
  final pulumi.Input<FhirServiceCors>? cors;
  /// An `identity` block as defined below.
  final pulumi.Input<FhirServiceIdentity>? identity;
  /// Specifies the kind of the Healthcare FHIR Service. Possible values are: `fhir-Stu3` and `fhir-R4`. Defaults to `fhir-R4`. Changing this forces a new Healthcare FHIR Service to be created.
  final pulumi.Input<String>? kind;
  /// Specifies the Azure Region where the Healthcare FHIR Service should be created. Changing this forces a new Healthcare FHIR Service to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Healthcare FHIR Service. Changing this forces a new Healthcare FHIR Service to be created.
  final pulumi.Input<String>? name;
  /// [A list](https://www.terraform.io/docs/configuration/attr-as-blocks.html) of `oci_artifact` objects as defined below to describe [OCI artifacts for export](https://learn.microsoft.com/en-gb/azure/healthcare-apis/fhir/de-identified-export).
  final pulumi.Input<List<FhirServiceOciArtifact>>? ociArtifacts;
  /// Whether public networks access is enabled.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Specifies the name of the Resource Group in which to create the Healthcare FHIR Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the Healthcare FHIR Service.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the id of the Healthcare Workspace where the Healthcare FHIR Service should exist. Changing this forces a new Healthcare FHIR Service to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [FhirServiceState].
  /// [accessPolicyObjectIds] A list of the access policies of the service instance.
  /// [authentication] An `authentication` block as defined below.
  /// [configurationExportStorageAccountName] Specifies the name of the storage account which the operation configuration information is exported to.
  /// [containerRegistryLoginServerUrls] A list of azure container registry settings used for convert data operation of the service instance.
  /// [cors] A `cors` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [kind] Specifies the kind of the Healthcare FHIR Service. Possible values are: `fhir-Stu3` and `fhir-R4`. Defaults to `fhir-R4`. Changing this forces a new Healthcare FHIR Service to be created.
  /// [location] Specifies the Azure Region where the Healthcare FHIR Service should be created. Changing this forces a new Healthcare FHIR Service to be created.
  /// [name] Specifies the name of the Healthcare FHIR Service. Changing this forces a new Healthcare FHIR Service to be created.
  /// [ociArtifacts] [A list](https://www.terraform.io/docs/configuration/attr-as-blocks.html) of `oci_artifact` objects as defined below to describe [OCI artifacts for export](https://learn.microsoft.com/en-gb/azure/healthcare-apis/fhir/de-identified-export).
  /// [publicNetworkAccessEnabled] Whether public networks access is enabled.
  /// [resourceGroupName] Specifies the name of the Resource Group in which to create the Healthcare FHIR Service. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Healthcare FHIR Service.
  /// [workspaceId] Specifies the id of the Healthcare Workspace where the Healthcare FHIR Service should exist. Changing this forces a new Healthcare FHIR Service to be created.
  FhirServiceState({
    pulumi.Output<List<String>>? accessPolicyObjectIds,
    pulumi.Output<FhirServiceAuthentication>? authentication,
    pulumi.Output<String>? configurationExportStorageAccountName,
    pulumi.Output<List<String>>? containerRegistryLoginServerUrls,
    pulumi.Output<FhirServiceCors>? cors,
    pulumi.Output<FhirServiceIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<FhirServiceOciArtifact>>? ociArtifacts,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workspaceId,
  }) :
      accessPolicyObjectIds = pulumi.Input.asOptionalInput<List<String>>(accessPolicyObjectIds),
      authentication = pulumi.Input.asOptionalInput<FhirServiceAuthentication>(authentication),
      configurationExportStorageAccountName = pulumi.Input.asOptionalInput<String>(configurationExportStorageAccountName),
      containerRegistryLoginServerUrls = pulumi.Input.asOptionalInput<List<String>>(containerRegistryLoginServerUrls),
      cors = pulumi.Input.asOptionalInput<FhirServiceCors>(cors),
      identity = pulumi.Input.asOptionalInput<FhirServiceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      ociArtifacts = pulumi.Input.asOptionalInput<List<FhirServiceOciArtifact>>(ociArtifacts),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyObjectIds': ?accessPolicyObjectIds,
      'authentication': ?pulumi.Input.mapOptionalInputValue<FhirServiceAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'configurationExportStorageAccountName': ?configurationExportStorageAccountName,
      'containerRegistryLoginServerUrls': ?containerRegistryLoginServerUrls,
      'cors': ?pulumi.Input.mapOptionalInputValue<FhirServiceCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<FhirServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'ociArtifacts': ?pulumi.Input.mapOptionalInputValue<List<FhirServiceOciArtifact>, List<Map<String, dynamic>>>(ociArtifacts, (value) => pulumi.Input.encodeList<FhirServiceOciArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory FhirServiceState.fromMap(Map<String, dynamic> map) {
    return FhirServiceState(
      accessPolicyObjectIds: map['accessPolicyObjectIds'] == null ? null : pulumi.Output.create<List<String>>((map['accessPolicyObjectIds'] as List).cast<String>()),
      authentication: map['authentication'] == null ? null : pulumi.Output.create<FhirServiceAuthentication>(FhirServiceAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())),
      configurationExportStorageAccountName: map['configurationExportStorageAccountName'] == null ? null : pulumi.Output.create<String>(map['configurationExportStorageAccountName'] as String),
      containerRegistryLoginServerUrls: map['containerRegistryLoginServerUrls'] == null ? null : pulumi.Output.create<List<String>>((map['containerRegistryLoginServerUrls'] as List).cast<String>()),
      cors: map['cors'] == null ? null : pulumi.Output.create<FhirServiceCors>(FhirServiceCors.fromMap((map['cors'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<FhirServiceIdentity>(FhirServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ociArtifacts: map['ociArtifacts'] == null ? null : pulumi.Output.create<List<FhirServiceOciArtifact>>(pulumi.Input.decodeList<FhirServiceOciArtifact>(map['ociArtifacts'], (value) => FhirServiceOciArtifact.fromMap((value as Map).cast<String, dynamic>()))),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

