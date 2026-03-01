// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_service_cors.dart';
import 'dicom_service_identity.dart';
import 'dicom_service_storage.dart';

/// {@template pulumi_healthcare_dicom_service_dicom_service_args_doc}
/// The set of arguments for DicomService.
/// {@endtemplate}
/// {@macro pulumi_healthcare_dicom_service_dicom_service_args_doc}
class DicomServiceArgs {
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
  /// Whether to enabled public networks when data plane traffic coming from public networks while private endpoint is enabled. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// A `storage` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<DicomServiceStorage>? storage;
  /// A mapping of tags to assign to the Healthcare DICOM Service.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the ID of the Healthcare Workspace where the Healthcare DICOM Service should exist. Changing this forces a new Healthcare DICOM Service to be created.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [DicomServiceArgs].
  /// [cors] A `cors` block as defined below.
  /// [dataPartitionsEnabled] If data partitions are enabled or not. Defaults to `false`. Changing this forces a new Healthcare DICOM Service to be created.
  /// [encryptionKeyUrl] The URL of the key to use for encryption as part of the customer-managed key encryption settings. For more details, refer to the [Azure Customer-Managed Keys Overview](https://learn.microsoft.com/en-us/azure/storage/common/customer-managed-keys-overview).
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the Azure Region where the Healthcare DICOM Service should be created. Changing this forces a new Healthcare DICOM Service to be created.
  /// [name] Specifies the name of the Healthcare DICOM Service. Changing this forces a new Healthcare DICOM Service to be created.
  /// [publicNetworkAccessEnabled] Whether to enabled public networks when data plane traffic coming from public networks while private endpoint is enabled. Defaults to `true`.
  /// [storage] A `storage` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Healthcare DICOM Service.
  /// [workspaceId] Specifies the ID of the Healthcare Workspace where the Healthcare DICOM Service should exist. Changing this forces a new Healthcare DICOM Service to be created.
  DicomServiceArgs({
    pulumi.Output<DicomServiceCors>? cors,
    pulumi.Output<bool>? dataPartitionsEnabled,
    pulumi.Output<String>? encryptionKeyUrl,
    pulumi.Output<DicomServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<DicomServiceStorage>? storage,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceId,
  }) :
      cors = pulumi.Input.asOptionalInput<DicomServiceCors>(cors),
      dataPartitionsEnabled = pulumi.Input.asOptionalInput<bool>(dataPartitionsEnabled),
      encryptionKeyUrl = pulumi.Input.asOptionalInput<String>(encryptionKeyUrl),
      identity = pulumi.Input.asOptionalInput<DicomServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      storage = pulumi.Input.asOptionalInput<DicomServiceStorage>(storage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cors': ?pulumi.Input.mapOptionalInputValue<DicomServiceCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'dataPartitionsEnabled': ?dataPartitionsEnabled,
      'encryptionKeyUrl': ?encryptionKeyUrl,
      'identity': ?pulumi.Input.mapOptionalInputValue<DicomServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'storage': ?pulumi.Input.mapOptionalInputValue<DicomServiceStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceId': workspaceId,
    };
  }

  factory DicomServiceArgs.fromMap(Map<String, dynamic> map) {
    return DicomServiceArgs(
      cors: map['cors'] == null ? null : pulumi.Output.create<DicomServiceCors>(DicomServiceCors.fromMap((map['cors'] as Map).cast<String, dynamic>())),
      dataPartitionsEnabled: map['dataPartitionsEnabled'] == null ? null : pulumi.Output.create<bool>(map['dataPartitionsEnabled'] as bool),
      encryptionKeyUrl: map['encryptionKeyUrl'] == null ? null : pulumi.Output.create<String>(map['encryptionKeyUrl'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<DicomServiceIdentity>(DicomServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      storage: map['storage'] == null ? null : pulumi.Output.create<DicomServiceStorage>(DicomServiceStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

