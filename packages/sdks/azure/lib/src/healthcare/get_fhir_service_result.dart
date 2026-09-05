// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fhir_service_authentication.dart';
import 'get_fhir_service_cor.dart';
import 'get_fhir_service_identity.dart';

/// Result data returned by getFhirService.
class GetFhirServiceResult {
  /// The list of the access policies of the service instance.
  final List<String>? accessPolicyObjectIds;
  /// The `authentication` block as defined below.
  final List<GetFhirServiceAuthentication>? authentications;
  /// The name of the storage account which the operation configuration information is exported to.
  final String? configurationExportStorageAccountName;
  /// The list of azure container registry settings used for convert data operation of the service instance.
  final List<String>? containerRegistryLoginServerUrls;
  /// The `cors` block as defined below.
  final List<GetFhirServiceCor>? cors;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The `identity` block as defined below.
  final List<GetFhirServiceIdentity>? identities;
  /// The kind of the Healthcare FHIR Service.
  final String? kind;
  /// The Azure Region where the Healthcare FHIR Service is located.
  final String? location;
  final String? name;
  /// The map of tags assigned to the Healthcare FHIR Service.
  final Map<String, String>? tags;
  final String? workspaceId;

  /// Creates a new [GetFhirServiceResult].
  /// [accessPolicyObjectIds] The list of the access policies of the service instance.
  /// [authentications] The `authentication` block as defined below.
  /// [configurationExportStorageAccountName] The name of the storage account which the operation configuration information is exported to.
  /// [containerRegistryLoginServerUrls] The list of azure container registry settings used for convert data operation of the service instance.
  /// [cors] The `cors` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] The `identity` block as defined below.
  /// [kind] The kind of the Healthcare FHIR Service.
  /// [location] The Azure Region where the Healthcare FHIR Service is located.
  /// [name] Optional.
  /// [tags] The map of tags assigned to the Healthcare FHIR Service.
  /// [workspaceId] Optional.
  const GetFhirServiceResult({
    this.accessPolicyObjectIds,
    this.authentications,
    this.configurationExportStorageAccountName,
    this.containerRegistryLoginServerUrls,
    this.cors,
    this.id,
    this.identities,
    this.kind,
    this.location,
    this.name,
    this.tags,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyObjectIds': ?accessPolicyObjectIds,
      'authentications': ?(() { final guardedValue = authentications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFhirServiceAuthentication, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'configurationExportStorageAccountName': ?configurationExportStorageAccountName,
      'containerRegistryLoginServerUrls': ?containerRegistryLoginServerUrls,
      'cors': ?(() { final guardedValue = cors; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFhirServiceCor, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFhirServiceIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetFhirServiceResult.fromMap(Map<String, dynamic> map) {
    return GetFhirServiceResult(
      accessPolicyObjectIds: (() { final guardedValue = map['accessPolicyObjectIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      authentications: (() { final guardedValue = map['authentications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFhirServiceAuthentication>(guardedValue, (value) => GetFhirServiceAuthentication.fromMap((value as Map).cast<String, dynamic>())); })(),
      configurationExportStorageAccountName: (() { final guardedValue = map['configurationExportStorageAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerRegistryLoginServerUrls: (() { final guardedValue = map['containerRegistryLoginServerUrls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFhirServiceCor>(guardedValue, (value) => GetFhirServiceCor.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFhirServiceIdentity>(guardedValue, (value) => GetFhirServiceIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
