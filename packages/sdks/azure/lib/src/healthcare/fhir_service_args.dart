// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_service_authentication.dart';
import 'fhir_service_cors.dart';
import 'fhir_service_identity.dart';
import 'fhir_service_oci_artifact.dart';

/// {@template pulumi_healthcare_fhir_service_fhir_service_args_doc}
/// The set of arguments for FhirService.
/// {@endtemplate}
/// {@macro pulumi_healthcare_fhir_service_fhir_service_args_doc}
class FhirServiceArgs {
  /// A list of the access policies of the service instance.
  final pulumi.Input<List<String>>? accessPolicyObjectIds;
  /// An `authentication` block as defined below.
  final pulumi.Input<FhirServiceAuthentication> authentication;
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
  /// [A list](https://www.terraform.io/docs/configuration/attr-as-blocks.html) of `ociArtifact` objects as defined below to describe [OCI artifacts for export](https://learn.microsoft.com/en-gb/azure/healthcare-apis/fhir/de-identified-export).
  final pulumi.Input<List<FhirServiceOciArtifact>>? ociArtifacts;
  /// Specifies the name of the Resource Group in which to create the Healthcare FHIR Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the Healthcare FHIR Service.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the id of the Healthcare Workspace where the Healthcare FHIR Service should exist. Changing this forces a new Healthcare FHIR Service to be created.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [FhirServiceArgs].
  /// [accessPolicyObjectIds] A list of the access policies of the service instance.
  /// [authentication] An `authentication` block as defined below.
  /// [configurationExportStorageAccountName] Specifies the name of the storage account which the operation configuration information is exported to.
  /// [containerRegistryLoginServerUrls] A list of azure container registry settings used for convert data operation of the service instance.
  /// [cors] A `cors` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [kind] Specifies the kind of the Healthcare FHIR Service. Possible values are: `fhir-Stu3` and `fhir-R4`. Defaults to `fhir-R4`. Changing this forces a new Healthcare FHIR Service to be created.
  /// [location] Specifies the Azure Region where the Healthcare FHIR Service should be created. Changing this forces a new Healthcare FHIR Service to be created.
  /// [name] Specifies the name of the Healthcare FHIR Service. Changing this forces a new Healthcare FHIR Service to be created.
  /// [ociArtifacts] [A list](https://www.terraform.io/docs/configuration/attr-as-blocks.html) of `ociArtifact` objects as defined below to describe [OCI artifacts for export](https://learn.microsoft.com/en-gb/azure/healthcare-apis/fhir/de-identified-export).
  /// [resourceGroupName] Specifies the name of the Resource Group in which to create the Healthcare FHIR Service. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Healthcare FHIR Service.
  /// [workspaceId] Specifies the id of the Healthcare Workspace where the Healthcare FHIR Service should exist. Changing this forces a new Healthcare FHIR Service to be created.
  const FhirServiceArgs({
    this.accessPolicyObjectIds,
    required this.authentication,
    this.configurationExportStorageAccountName,
    this.containerRegistryLoginServerUrls,
    this.cors,
    this.identity,
    this.kind,
    this.location,
    this.name,
    this.ociArtifacts,
    required this.resourceGroupName,
    this.tags,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyObjectIds': ?accessPolicyObjectIds,
      'authentication': pulumi.Input.mapInputValue<FhirServiceAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'configurationExportStorageAccountName': ?configurationExportStorageAccountName,
      'containerRegistryLoginServerUrls': ?containerRegistryLoginServerUrls,
      'cors': ?pulumi.Input.mapOptionalInputValue<FhirServiceCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<FhirServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'ociArtifacts': ?pulumi.Input.mapOptionalInputValue<List<FhirServiceOciArtifact>, List<Map<String, dynamic>>>(ociArtifacts, (value) => pulumi.Input.encodeList<FhirServiceOciArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workspaceId': workspaceId,
    };
  }

  factory FhirServiceArgs.fromMap(Map<String, dynamic> map) {
    return FhirServiceArgs(
      accessPolicyObjectIds: (() { final guardedValue = map['accessPolicyObjectIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authentication: pulumi.Input.fromValue(FhirServiceAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      configurationExportStorageAccountName: (() { final guardedValue = map['configurationExportStorageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerRegistryLoginServerUrls: (() { final guardedValue = map['containerRegistryLoginServerUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FhirServiceCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FhirServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociArtifacts: (() { final guardedValue = map['ociArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FhirServiceOciArtifact>(guardedValue, (value) => FhirServiceOciArtifact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
