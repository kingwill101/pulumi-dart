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
    pulumi.Output<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation,
    pulumi.Output<String>? forceSynchronization,
    required pulumi.Output<String> kubernetesSecretType,
    pulumi.Output<String>? location,
    required pulumi.Output<List<KubernetesSecretObjectMapping>> objectSecretMapping,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> secretProviderClassName,
    pulumi.Output<String>? secretSyncName,
    required pulumi.Output<String> serviceAccountName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<AzureResourceManagerCommonTypesExtendedLocation>(extendedLocation),
      forceSynchronization = pulumi.Input.asOptionalInput<String>(forceSynchronization),
      kubernetesSecretType = pulumi.Input.asInput<String>(kubernetesSecretType),
      location = pulumi.Input.asOptionalInput<String>(location),
      objectSecretMapping = pulumi.Input.asInput<List<KubernetesSecretObjectMapping>>(objectSecretMapping),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secretProviderClassName = pulumi.Input.asInput<String>(secretProviderClassName),
      secretSyncName = pulumi.Input.asOptionalInput<String>(secretSyncName),
      serviceAccountName = pulumi.Input.asInput<String>(serviceAccountName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<AzureResourceManagerCommonTypesExtendedLocation>(AzureResourceManagerCommonTypesExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      forceSynchronization: map['forceSynchronization'] == null ? null : pulumi.Output.create<String>(map['forceSynchronization'] as String),
      kubernetesSecretType: pulumi.Output.create<String>(map['kubernetesSecretType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      objectSecretMapping: pulumi.Output.create<List<KubernetesSecretObjectMapping>>(pulumi.Input.decodeList<KubernetesSecretObjectMapping>(map['objectSecretMapping'], (value) => KubernetesSecretObjectMapping.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secretProviderClassName: pulumi.Output.create<String>(map['secretProviderClassName'] as String),
      secretSyncName: map['secretSyncName'] == null ? null : pulumi.Output.create<String>(map['secretSyncName'] as String),
      serviceAccountName: pulumi.Output.create<String>(map['serviceAccountName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

