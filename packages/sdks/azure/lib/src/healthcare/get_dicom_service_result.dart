// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dicom_service_authentication.dart';
import 'get_dicom_service_cor.dart';
import 'get_dicom_service_identity.dart';
import 'get_dicom_service_private_endpoint.dart';
import 'get_dicom_service_storage.dart';

/// Result data returned by getDicomService.
class GetDicomServiceResult {
  /// The `authentication` block as defined below.
  final List<GetDicomServiceAuthentication> authentications;

  /// The `cors` block as defined below.
  final List<GetDicomServiceCor> cors;

  /// If data partitions are enabled or not.
  final bool dataPartitionsEnabled;

  /// The URL of the key to use for encryption as part of the customer-managed key encryption settings.
  final String encryptionKeyUrl;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetDicomServiceIdentity> identities;

  /// The Azure Region where the Healthcare DICOM Service is located.
  final String location;
  final String name;
  final List<GetDicomServicePrivateEndpoint> privateEndpoints;

  /// The url of the Healthcare DICOM Services.
  final String serviceUrl;

  /// The `storage` block as defined below.
  final List<GetDicomServiceStorage> storages;

  /// A map of tags assigned to the Healthcare DICOM Service.
  final Map<String, String> tags;
  final String workspaceId;

  /// Creates a new [GetDicomServiceResult].
  /// [authentications] The `authentication` block as defined below.
  /// [cors] The `cors` block as defined below.
  /// [dataPartitionsEnabled] If data partitions are enabled or not.
  /// [encryptionKeyUrl] The URL of the key to use for encryption as part of the customer-managed key encryption settings.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] Required.
  /// [location] The Azure Region where the Healthcare DICOM Service is located.
  /// [name] Required.
  /// [privateEndpoints] Required.
  /// [serviceUrl] The url of the Healthcare DICOM Services.
  /// [storages] The `storage` block as defined below.
  /// [tags] A map of tags assigned to the Healthcare DICOM Service.
  /// [workspaceId] Required.
  GetDicomServiceResult({
    required this.authentications,
    required this.cors,
    required this.dataPartitionsEnabled,
    required this.encryptionKeyUrl,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.privateEndpoints,
    required this.serviceUrl,
    required this.storages,
    required this.tags,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications':
          pulumi.Input.encodeList<
            GetDicomServiceAuthentication,
            Map<String, dynamic>
          >(authentications, (value) => value.toMap()),
      'cors': pulumi.Input.encodeList<GetDicomServiceCor, Map<String, dynamic>>(
        cors,
        (value) => value.toMap(),
      ),
      'dataPartitionsEnabled': dataPartitionsEnabled,
      'encryptionKeyUrl': encryptionKeyUrl,
      'id': id,
      'identities':
          pulumi.Input.encodeList<
            GetDicomServiceIdentity,
            Map<String, dynamic>
          >(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'privateEndpoints':
          pulumi.Input.encodeList<
            GetDicomServicePrivateEndpoint,
            Map<String, dynamic>
          >(privateEndpoints, (value) => value.toMap()),
      'serviceUrl': serviceUrl,
      'storages':
          pulumi.Input.encodeList<GetDicomServiceStorage, Map<String, dynamic>>(
            storages,
            (value) => value.toMap(),
          ),
      'tags': tags,
      'workspaceId': workspaceId,
    };
  }

  factory GetDicomServiceResult.fromMap(Map<String, dynamic> map) {
    return GetDicomServiceResult(
      authentications: pulumi.Input.decodeList<GetDicomServiceAuthentication>(
        map['authentications']!,
        (value) => GetDicomServiceAuthentication.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      cors: pulumi.Input.decodeList<GetDicomServiceCor>(
        map['cors']!,
        (value) =>
            GetDicomServiceCor.fromMap((value as Map).cast<String, dynamic>()),
      ),
      dataPartitionsEnabled: map['dataPartitionsEnabled'] as bool,
      encryptionKeyUrl: map['encryptionKeyUrl'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetDicomServiceIdentity>(
        map['identities']!,
        (value) => GetDicomServiceIdentity.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      location: map['location'] as String,
      name: map['name'] as String,
      privateEndpoints: pulumi.Input.decodeList<GetDicomServicePrivateEndpoint>(
        map['privateEndpoints']!,
        (value) => GetDicomServicePrivateEndpoint.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      serviceUrl: map['serviceUrl'] as String,
      storages: pulumi.Input.decodeList<GetDicomServiceStorage>(
        map['storages']!,
        (value) => GetDicomServiceStorage.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (map['tags'] as Map).cast<String, String>(),
      workspaceId: map['workspaceId'] as String,
    );
  }
}
