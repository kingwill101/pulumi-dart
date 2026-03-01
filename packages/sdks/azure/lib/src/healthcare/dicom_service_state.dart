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
    pulumi.Output<List<DicomServiceAuthentication>>? authentications,
    pulumi.Output<DicomServiceCors>? cors,
    pulumi.Output<bool>? dataPartitionsEnabled,
    pulumi.Output<String>? encryptionKeyUrl,
    pulumi.Output<DicomServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<DicomServicePrivateEndpoint>>? privateEndpoints,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? serviceUrl,
    pulumi.Output<DicomServiceStorage>? storage,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workspaceId,
  }) :
      authentications = pulumi.Input.asOptionalInput<List<DicomServiceAuthentication>>(authentications),
      cors = pulumi.Input.asOptionalInput<DicomServiceCors>(cors),
      dataPartitionsEnabled = pulumi.Input.asOptionalInput<bool>(dataPartitionsEnabled),
      encryptionKeyUrl = pulumi.Input.asOptionalInput<String>(encryptionKeyUrl),
      identity = pulumi.Input.asOptionalInput<DicomServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateEndpoints = pulumi.Input.asOptionalInput<List<DicomServicePrivateEndpoint>>(privateEndpoints),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      serviceUrl = pulumi.Input.asOptionalInput<String>(serviceUrl),
      storage = pulumi.Input.asOptionalInput<DicomServiceStorage>(storage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': ?pulumi.Input.mapOptionalInputValue<List<DicomServiceAuthentication>, List<Map<String, dynamic>>>(authentications, (value) => pulumi.Input.encodeList<DicomServiceAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cors': ?pulumi.Input.mapOptionalInputValue<DicomServiceCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'dataPartitionsEnabled': ?dataPartitionsEnabled,
      'encryptionKeyUrl': ?encryptionKeyUrl,
      'identity': ?pulumi.Input.mapOptionalInputValue<DicomServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'privateEndpoints': ?pulumi.Input.mapOptionalInputValue<List<DicomServicePrivateEndpoint>, List<Map<String, dynamic>>>(privateEndpoints, (value) => pulumi.Input.encodeList<DicomServicePrivateEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'serviceUrl': ?serviceUrl,
      'storage': ?pulumi.Input.mapOptionalInputValue<DicomServiceStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory DicomServiceState.fromMap(Map<String, dynamic> map) {
    return DicomServiceState(
      authentications: map['authentications'] == null ? null : pulumi.Output.create<List<DicomServiceAuthentication>>(pulumi.Input.decodeList<DicomServiceAuthentication>(map['authentications'], (value) => DicomServiceAuthentication.fromMap((value as Map).cast<String, dynamic>()))),
      cors: map['cors'] == null ? null : pulumi.Output.create<DicomServiceCors>(DicomServiceCors.fromMap((map['cors'] as Map).cast<String, dynamic>())),
      dataPartitionsEnabled: map['dataPartitionsEnabled'] == null ? null : pulumi.Output.create<bool>(map['dataPartitionsEnabled'] as bool),
      encryptionKeyUrl: map['encryptionKeyUrl'] == null ? null : pulumi.Output.create<String>(map['encryptionKeyUrl'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<DicomServiceIdentity>(DicomServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateEndpoints: map['privateEndpoints'] == null ? null : pulumi.Output.create<List<DicomServicePrivateEndpoint>>(pulumi.Input.decodeList<DicomServicePrivateEndpoint>(map['privateEndpoints'], (value) => DicomServicePrivateEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      serviceUrl: map['serviceUrl'] == null ? null : pulumi.Output.create<String>(map['serviceUrl'] as String),
      storage: map['storage'] == null ? null : pulumi.Output.create<DicomServiceStorage>(DicomServiceStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

