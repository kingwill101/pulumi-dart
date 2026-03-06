// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location_response.dart';
import 'kubernetes_secret_object_mapping_response.dart';
import 'secret_sync_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSecretSync.
class GetSecretSyncResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The complex type of the extended location.
  final AzureResourceManagerCommonTypesExtendedLocationResponse? extendedLocation;
  /// ForceSynchronization can be used to force the secret synchronization. The secret synchronization is triggered by changing the value in this field. This field is not used to resolve synchronization conflicts.
  final String? forceSynchronization;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Type specifies the type of the Kubernetes secret object, e.g. "Opaque" or"kubernetes.io/tls". The controller must have permission to create secrets of the specified type.
  final String kubernetesSecretType;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// An array of SecretObjectData that maps secret data from the external secret provider to the Kubernetes secret. Each entry specifies the source secret in the external provider and the corresponding key in the Kubernetes secret.
  final List<KubernetesSecretObjectMappingResponse> objectSecretMapping;
  /// Provisioning state of the SecretSync instance.
  final String provisioningState;
  /// SecretProviderClassName specifies the name of the SecretProviderClass resource, which contains the information needed to access the cloud provider secret store.
  final String secretProviderClassName;
  /// ServiceAccountName specifies the name of the service account used to access the cloud provider secret store. The audience field in the service account token must be passed as parameter in the controller configuration. The audience is used when requesting a token from the API server for the service account; the supported audiences are defined by each provider.
  final String serviceAccountName;
  /// SecretSyncStatus defines the observed state of the secret synchronization process.
  final SecretSyncStatusResponse status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSecretSyncResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] The complex type of the extended location.
  /// [forceSynchronization] ForceSynchronization can be used to force the secret synchronization. The secret synchronization is triggered by changing the value in this field. This field is not used to resolve synchronization conflicts.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kubernetesSecretType] Type specifies the type of the Kubernetes secret object, e.g. "Opaque" or"kubernetes.io/tls". The controller must have permission to create secrets of the specified type.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [objectSecretMapping] An array of SecretObjectData that maps secret data from the external secret provider to the Kubernetes secret. Each entry specifies the source secret in the external provider and the corresponding key in the Kubernetes secret.
  /// [provisioningState] Provisioning state of the SecretSync instance.
  /// [secretProviderClassName] SecretProviderClassName specifies the name of the SecretProviderClass resource, which contains the information needed to access the cloud provider secret store.
  /// [serviceAccountName] ServiceAccountName specifies the name of the service account used to access the cloud provider secret store. The audience field in the service account token must be passed as parameter in the controller configuration. The audience is used when requesting a token from the API server for the service account; the supported audiences are defined by each provider.
  /// [status] SecretSyncStatus defines the observed state of the secret synchronization process.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSecretSyncResult({
    required this.azureApiVersion,
    this.extendedLocation,
    this.forceSynchronization,
    required this.id,
    required this.kubernetesSecretType,
    required this.location,
    required this.name,
    required this.objectSecretMapping,
    required this.provisioningState,
    required this.secretProviderClassName,
    required this.serviceAccountName,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'extendedLocation': ?extendedLocation?.toMap(),
      'forceSynchronization': ?forceSynchronization,
      'id': id,
      'kubernetesSecretType': kubernetesSecretType,
      'location': location,
      'name': name,
      'objectSecretMapping': pulumi.Input.encodeList<KubernetesSecretObjectMappingResponse, Map<String, dynamic>>(objectSecretMapping, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'secretProviderClassName': secretProviderClassName,
      'serviceAccountName': serviceAccountName,
      'status': status.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetSecretSyncResult.fromMap(Map<String, dynamic> map) {
    return GetSecretSyncResult(
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return AzureResourceManagerCommonTypesExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      forceSynchronization: (() { final guardedValue = map['forceSynchronization']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kubernetesSecretType: map['kubernetesSecretType'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      objectSecretMapping: pulumi.Input.decodeList<KubernetesSecretObjectMappingResponse>(map['objectSecretMapping']!, (value) => KubernetesSecretObjectMappingResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      secretProviderClassName: map['secretProviderClassName'] as String,
      serviceAccountName: map['serviceAccountName'] as String,
      status: SecretSyncStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

