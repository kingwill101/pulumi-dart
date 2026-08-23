// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWebAppPublicCertificateSlot.
class GetWebAppPublicCertificateSlotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Public Certificate byte array
  final String? blob;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String name;
  /// Public Certificate Location
  final String? publicCertificateLocation;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Certificate Thumbprint
  final String thumbprint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWebAppPublicCertificateSlotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [blob] Public Certificate byte array
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [publicCertificateLocation] Public Certificate Location
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [thumbprint] Certificate Thumbprint
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWebAppPublicCertificateSlotResult({
    required this.azureApiVersion,
    this.blob,
    required this.id,
    this.kind,
    required this.name,
    this.publicCertificateLocation,
    required this.systemData,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'blob': ?blob,
      'id': id,
      'kind': ?kind,
      'name': name,
      'publicCertificateLocation': ?publicCertificateLocation,
      'systemData': systemData.toMap(),
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory GetWebAppPublicCertificateSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppPublicCertificateSlotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      blob: (() { final guardedValue = map['blob']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      publicCertificateLocation: (() { final guardedValue = map['publicCertificateLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
    );
  }
}
