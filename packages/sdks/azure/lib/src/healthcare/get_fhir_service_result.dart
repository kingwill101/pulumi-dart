// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fhir_service_authentication.dart';
import 'get_fhir_service_cor.dart';
import 'get_fhir_service_identity.dart';

/// Result data returned by getFhirService.
class GetFhirServiceResult {
  /// The list of the access policies of the service instance.
  final List<String> accessPolicyObjectIds;
  /// The `authentication` block as defined below.
  final List<GetFhirServiceAuthentication> authentications;
  /// The name of the storage account which the operation configuration information is exported to.
  final String configurationExportStorageAccountName;
  /// The list of azure container registry settings used for convert data operation of the service instance.
  final List<String> containerRegistryLoginServerUrls;
  /// The `cors` block as defined below.
  final List<GetFhirServiceCor> cors;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The `identity` block as defined below.
  final List<GetFhirServiceIdentity> identities;
  /// The kind of the Healthcare FHIR Service.
  final String kind;
  /// The Azure Region where the Healthcare FHIR Service is located.
  final String location;
  final String name;
  /// The map of tags assigned to the Healthcare FHIR Service.
  final Map<String, String>? tags;
  final String workspaceId;

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
  /// [name] Required.
  /// [tags] The map of tags assigned to the Healthcare FHIR Service.
  /// [workspaceId] Required.
  GetFhirServiceResult({
    required this.accessPolicyObjectIds,
    required this.authentications,
    required this.configurationExportStorageAccountName,
    required this.containerRegistryLoginServerUrls,
    required this.cors,
    required this.id,
    required this.identities,
    required this.kind,
    required this.location,
    required this.name,
    this.tags,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyObjectIds': accessPolicyObjectIds,
      'authentications': pulumi.Input.encodeList<GetFhirServiceAuthentication, Map<String, dynamic>>(authentications, (value) => value.toMap()),
      'configurationExportStorageAccountName': configurationExportStorageAccountName,
      'containerRegistryLoginServerUrls': containerRegistryLoginServerUrls,
      'cors': pulumi.Input.encodeList<GetFhirServiceCor, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'id': id,
      'identities': pulumi.Input.encodeList<GetFhirServiceIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'kind': kind,
      'location': location,
      'name': name,
      'tags': ?tags,
      'workspaceId': workspaceId,
    };
  }

  factory GetFhirServiceResult.fromMap(Map<String, dynamic> map) {
    return GetFhirServiceResult(
      accessPolicyObjectIds: (map['accessPolicyObjectIds'] as List).cast<String>(),
      authentications: pulumi.Input.decodeList<GetFhirServiceAuthentication>(map['authentications']!, (value) => GetFhirServiceAuthentication.fromMap((value as Map).cast<String, dynamic>())),
      configurationExportStorageAccountName: map['configurationExportStorageAccountName'] as String,
      containerRegistryLoginServerUrls: (map['containerRegistryLoginServerUrls'] as List).cast<String>(),
      cors: pulumi.Input.decodeList<GetFhirServiceCor>(map['cors']!, (value) => GetFhirServiceCor.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetFhirServiceIdentity>(map['identities']!, (value) => GetFhirServiceIdentity.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      workspaceId: map['workspaceId'] as String,
    );
  }
}

