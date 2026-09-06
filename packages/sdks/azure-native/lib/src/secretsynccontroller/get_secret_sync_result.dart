// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'kubernetes_secret_object_mapping_response.dart';
import 'secret_sync_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSecretSync.
class GetSecretSyncResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The complex type of the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// ForceSynchronization can be used to force the secret synchronization. The secret synchronization is triggered by changing the value in this field. This field is not used to resolve synchronization conflicts.
  final String? forceSynchronization;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Type specifies the type of the Kubernetes secret object, e.g. "Opaque" or"kubernetes.io/tls". The controller must have permission to create secrets of the specified type.
  final String? kubernetesSecretType;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// An array of SecretObjectData that maps secret data from the external secret provider to the Kubernetes secret. Each entry specifies the source secret in the external provider and the corresponding key in the Kubernetes secret.
  final List<KubernetesSecretObjectMappingResponse>? objectSecretMapping;
  /// Provisioning state of the SecretSync instance.
  final String? provisioningState;
  /// SecretProviderClassName specifies the name of the SecretProviderClass resource, which contains the information needed to access the cloud provider secret store.
  final String? secretProviderClassName;
  /// ServiceAccountName specifies the name of the service account used to access the cloud provider secret store. The audience field in the service account token must be passed as parameter in the controller configuration. The audience is used when requesting a token from the API server for the service account; the supported audiences are defined by each provider.
  final String? serviceAccountName;
  /// SecretSyncStatus defines the observed state of the secret synchronization process.
  final SecretSyncStatusResponse? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.azureApiVersion,
    this.extendedLocation,
    this.forceSynchronization,
    this.id,
    this.kubernetesSecretType,
    this.location,
    this.name,
    this.objectSecretMapping,
    this.provisioningState,
    this.secretProviderClassName,
    this.serviceAccountName,
    this.status,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'extendedLocation': ?extendedLocation?.toMap(),
      'forceSynchronization': ?forceSynchronization,
      'id': ?id,
      'kubernetesSecretType': ?kubernetesSecretType,
      'location': ?location,
      'name': ?name,
      'objectSecretMapping': ?(() { final guardedValue = objectSecretMapping; if (guardedValue == null) return null; return pulumi.Input.encodeList<KubernetesSecretObjectMappingResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'secretProviderClassName': ?secretProviderClassName,
      'serviceAccountName': ?serviceAccountName,
      'status': ?status?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetSecretSyncResult.fromMap(Map<String, dynamic> map) {
    return GetSecretSyncResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      forceSynchronization: (() { final guardedValue = map['forceSynchronization']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubernetesSecretType: (() { final guardedValue = map['kubernetesSecretType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectSecretMapping: (() { final guardedValue = map['objectSecretMapping']; if (guardedValue == null) return null; return pulumi.Input.decodeList<KubernetesSecretObjectMappingResponse>(guardedValue, (value) => KubernetesSecretObjectMappingResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretProviderClassName: (() { final guardedValue = map['secretProviderClassName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccountName: (() { final guardedValue = map['serviceAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return SecretSyncStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
