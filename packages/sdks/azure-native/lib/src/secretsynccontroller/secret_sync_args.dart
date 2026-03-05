// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location.dart';
import 'kubernetes_secret_object_mapping.dart';

/// {@template pulumi_secretsynccontroller_secret_sync_args_doc}
/// The set of arguments for SecretSync.
/// {@endtemplate}
/// {@macro pulumi_secretsynccontroller_secret_sync_args_doc}
class SecretSyncArgs {
  /// The complex type of the extended location.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation;
  /// ForceSynchronization can be used to force the secret synchronization. The secret synchronization is triggered by changing the value in this field. This field is not used to resolve synchronization conflicts.
  final pulumi.Input<String>? forceSynchronization;
  /// Type specifies the type of the Kubernetes secret object, e.g. "Opaque" or"kubernetes.io/tls". The controller must have permission to create secrets of the specified type.
  final pulumi.Input<String> kubernetesSecretType;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// An array of SecretObjectData that maps secret data from the external secret provider to the Kubernetes secret. Each entry specifies the source secret in the external provider and the corresponding key in the Kubernetes secret.
  final pulumi.Input<List<KubernetesSecretObjectMapping>> objectSecretMapping;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SecretProviderClassName specifies the name of the SecretProviderClass resource, which contains the information needed to access the cloud provider secret store.
  final pulumi.Input<String> secretProviderClassName;
  /// The name of the SecretSync
  final pulumi.Input<String>? secretSyncName;
  /// ServiceAccountName specifies the name of the service account used to access the cloud provider secret store. The audience field in the service account token must be passed as parameter in the controller configuration. The audience is used when requesting a token from the API server for the service account; the supported audiences are defined by each provider.
  final pulumi.Input<String> serviceAccountName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SecretSyncArgs].
  /// [extendedLocation] The complex type of the extended location.
  /// [forceSynchronization] ForceSynchronization can be used to force the secret synchronization. The secret synchronization is triggered by changing the value in this field. This field is not used to resolve synchronization conflicts.
  /// [kubernetesSecretType] Type specifies the type of the Kubernetes secret object, e.g. "Opaque" or"kubernetes.io/tls". The controller must have permission to create secrets of the specified type.
  /// [location] The geo-location where the resource lives
  /// [objectSecretMapping] An array of SecretObjectData that maps secret data from the external secret provider to the Kubernetes secret. Each entry specifies the source secret in the external provider and the corresponding key in the Kubernetes secret.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [secretProviderClassName] SecretProviderClassName specifies the name of the SecretProviderClass resource, which contains the information needed to access the cloud provider secret store.
  /// [secretSyncName] The name of the SecretSync
  /// [serviceAccountName] ServiceAccountName specifies the name of the service account used to access the cloud provider secret store. The audience field in the service account token must be passed as parameter in the controller configuration. The audience is used when requesting a token from the API server for the service account; the supported audiences are defined by each provider.
  /// [tags] Resource tags.
  SecretSyncArgs({
    this.extendedLocation,
    this.forceSynchronization,
    required this.kubernetesSecretType,
    this.location,
    required this.objectSecretMapping,
    required this.resourceGroupName,
    required this.secretProviderClassName,
    this.secretSyncName,
    required this.serviceAccountName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerCommonTypesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'forceSynchronization': ?forceSynchronization,
      'kubernetesSecretType': kubernetesSecretType,
      'location': ?location,
      'objectSecretMapping': pulumi.Input.mapInputValue<List<KubernetesSecretObjectMapping>, List<Map<String, dynamic>>>(objectSecretMapping, (value) => pulumi.Input.encodeList<KubernetesSecretObjectMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'secretProviderClassName': secretProviderClassName,
      'secretSyncName': ?secretSyncName,
      'serviceAccountName': serviceAccountName,
      'tags': ?tags,
    };
  }

  factory SecretSyncArgs.fromMap(Map<String, dynamic> map) {
    return SecretSyncArgs(
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureResourceManagerCommonTypesExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forceSynchronization: (() { final guardedValue = map['forceSynchronization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubernetesSecretType: pulumi.Input.fromValue(map['kubernetesSecretType'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectSecretMapping: pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesSecretObjectMapping>(map['objectSecretMapping']!, (value) => KubernetesSecretObjectMapping.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      secretProviderClassName: pulumi.Input.fromValue(map['secretProviderClassName'] as String),
      secretSyncName: (() { final guardedValue = map['secretSyncName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountName: pulumi.Input.fromValue(map['serviceAccountName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

