// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_service_authentication.dart';
import 'dicom_service_cors.dart';
import 'dicom_service_identity.dart';
import 'dicom_service_private_endpoint.dart';
import 'dicom_service_storage.dart';

/// Input properties used for looking up and filtering DicomService resources.
class DicomServiceState {
  /// The `authentication` block as defined below.
  final pulumi.Input<List<DicomServiceAuthentication>>? authentications;

  /// A `cors` block as defined below.
  final pulumi.Input<DicomServiceCors>? cors;

  /// If data partitions are enabled or not. Defaults to `false`. Changing this forces a new Healthcare DICOM Service to be created.
  final pulumi.Input<bool>? dataPartitionsEnabled;

  /// The URL of the key to use for encryption as part of the customer-managed key encryption settings. For more details, refer to the [Azure Customer-Managed Keys Overview](https://learn.microsoft.com/en-us/azure/storage/common/customer-managed-keys-overview).
  final pulumi.Input<String>? encryptionKeyUrl;

  /// An `identity` block as defined below.
  final pulumi.Input<DicomServiceIdentity>? identity;

  /// Specifies the Azure Region where the Healthcare DICOM Service should be created. Changing this forces a new Healthcare DICOM Service to be created.
  final pulumi.Input<String>? location;

  /// Specifies the name of the Healthcare DICOM Service. Changing this forces a new Healthcare DICOM Service to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<List<DicomServicePrivateEndpoint>>? privateEndpoints;

  /// Whether to enabled public networks when data plane traffic coming from public networks while private endpoint is enabled. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;

  /// The url of the Healthcare DICOM Services.
  final pulumi.Input<String>? serviceUrl;

  /// A `storage` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<DicomServiceStorage>? storage;

  /// A mapping of tags to assign to the Healthcare DICOM Service.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies the ID of the Healthcare Workspace where the Healthcare DICOM Service should exist. Changing this forces a new Healthcare DICOM Service to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [DicomServiceState].
  /// [authentications] The `authentication` block as defined below.
  /// [cors] A `cors` block as defined below.
  /// [dataPartitionsEnabled] If data partitions are enabled or not. Defaults to `false`. Changing this forces a new Healthcare DICOM Service to be created.
  /// [encryptionKeyUrl] The URL of the key to use for encryption as part of the customer-managed key encryption settings. For more details, refer to the [Azure Customer-Managed Keys Overview](https://learn.microsoft.com/en-us/azure/storage/common/customer-managed-keys-overview).
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the Azure Region where the Healthcare DICOM Service should be created. Changing this forces a new Healthcare DICOM Service to be created.
  /// [name] Specifies the name of the Healthcare DICOM Service. Changing this forces a new Healthcare DICOM Service to be created.
  /// [privateEndpoints] Optional.
  /// [publicNetworkAccessEnabled] Whether to enabled public networks when data plane traffic coming from public networks while private endpoint is enabled. Defaults to `true`.
  /// [serviceUrl] The url of the Healthcare DICOM Services.
  /// [storage] A `storage` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Healthcare DICOM Service.
  /// [workspaceId] Specifies the ID of the Healthcare Workspace where the Healthcare DICOM Service should exist. Changing this forces a new Healthcare DICOM Service to be created.
  DicomServiceState({
    this.authentications,
    this.cors,
    this.dataPartitionsEnabled,
    this.encryptionKeyUrl,
    this.identity,
    this.location,
    this.name,
    this.privateEndpoints,
    this.publicNetworkAccessEnabled,
    this.serviceUrl,
    this.storage,
    this.tags,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications':
          ?pulumi.Input.mapOptionalInputValue<
            List<DicomServiceAuthentication>,
            List<Map<String, dynamic>>
          >(
            authentications,
            (value) =>
                pulumi.Input.encodeList<
                  DicomServiceAuthentication,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cors':
          ?pulumi.Input.mapOptionalInputValue<
            DicomServiceCors,
            Map<String, dynamic>
          >(cors, (value) => value.toMap()),
      'dataPartitionsEnabled': ?dataPartitionsEnabled,
      'encryptionKeyUrl': ?encryptionKeyUrl,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            DicomServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'privateEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<DicomServicePrivateEndpoint>,
            List<Map<String, dynamic>>
          >(
            privateEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  DicomServicePrivateEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'serviceUrl': ?serviceUrl,
      'storage':
          ?pulumi.Input.mapOptionalInputValue<
            DicomServiceStorage,
            Map<String, dynamic>
          >(storage, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory DicomServiceState.fromMap(Map<String, dynamic> map) {
    return DicomServiceState(
      authentications: (() {
        final guardedValue = map['authentications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DicomServiceAuthentication>(
            guardedValue,
            (value) => DicomServiceAuthentication.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      cors: (() {
        final guardedValue = map['cors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DicomServiceCors.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataPartitionsEnabled: (() {
        final guardedValue = map['dataPartitionsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encryptionKeyUrl: (() {
        final guardedValue = map['encryptionKeyUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DicomServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpoints: (() {
        final guardedValue = map['privateEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DicomServicePrivateEndpoint>(
            guardedValue,
            (value) => DicomServicePrivateEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      serviceUrl: (() {
        final guardedValue = map['serviceUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storage: (() {
        final guardedValue = map['storage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DicomServiceStorage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workspaceId: (() {
        final guardedValue = map['workspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
