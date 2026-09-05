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
  final List<GetDicomServiceAuthentication>? authentications;
  /// The `cors` block as defined below.
  final List<GetDicomServiceCor>? cors;
  /// If data partitions are enabled or not.
  final bool? dataPartitionsEnabled;
  /// The URL of the key to use for encryption as part of the customer-managed key encryption settings.
  final String? encryptionKeyUrl;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetDicomServiceIdentity>? identities;
  /// The Azure Region where the Healthcare DICOM Service is located.
  final String? location;
  final String? name;
  final List<GetDicomServicePrivateEndpoint>? privateEndpoints;
  /// The url of the Healthcare DICOM Services.
  final String? serviceUrl;
  /// The `storage` block as defined below.
  final List<GetDicomServiceStorage>? storages;
  /// A map of tags assigned to the Healthcare DICOM Service.
  final Map<String, String>? tags;
  final String? workspaceId;

  /// Creates a new [GetDicomServiceResult].
  /// [authentications] The `authentication` block as defined below.
  /// [cors] The `cors` block as defined below.
  /// [dataPartitionsEnabled] If data partitions are enabled or not.
  /// [encryptionKeyUrl] The URL of the key to use for encryption as part of the customer-managed key encryption settings.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] Optional.
  /// [location] The Azure Region where the Healthcare DICOM Service is located.
  /// [name] Optional.
  /// [privateEndpoints] Optional.
  /// [serviceUrl] The url of the Healthcare DICOM Services.
  /// [storages] The `storage` block as defined below.
  /// [tags] A map of tags assigned to the Healthcare DICOM Service.
  /// [workspaceId] Optional.
  const GetDicomServiceResult({
    this.authentications,
    this.cors,
    this.dataPartitionsEnabled,
    this.encryptionKeyUrl,
    this.id,
    this.identities,
    this.location,
    this.name,
    this.privateEndpoints,
    this.serviceUrl,
    this.storages,
    this.tags,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': ?(() { final guardedValue = authentications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDicomServiceAuthentication, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cors': ?(() { final guardedValue = cors; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDicomServiceCor, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataPartitionsEnabled': ?dataPartitionsEnabled,
      'encryptionKeyUrl': ?encryptionKeyUrl,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDicomServiceIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'privateEndpoints': ?(() { final guardedValue = privateEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDicomServicePrivateEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceUrl': ?serviceUrl,
      'storages': ?(() { final guardedValue = storages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDicomServiceStorage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetDicomServiceResult.fromMap(Map<String, dynamic> map) {
    return GetDicomServiceResult(
      authentications: (() { final guardedValue = map['authentications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDicomServiceAuthentication>(guardedValue, (value) => GetDicomServiceAuthentication.fromMap((value as Map).cast<String, dynamic>())); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDicomServiceCor>(guardedValue, (value) => GetDicomServiceCor.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataPartitionsEnabled: (() { final guardedValue = map['dataPartitionsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryptionKeyUrl: (() { final guardedValue = map['encryptionKeyUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDicomServiceIdentity>(guardedValue, (value) => GetDicomServiceIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpoints: (() { final guardedValue = map['privateEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDicomServicePrivateEndpoint>(guardedValue, (value) => GetDicomServicePrivateEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceUrl: (() { final guardedValue = map['serviceUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storages: (() { final guardedValue = map['storages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDicomServiceStorage>(guardedValue, (value) => GetDicomServiceStorage.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
