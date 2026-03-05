// ignore_for_file: unused_element, unnecessary_cast

import 'sku_response.dart';

/// Result data returned by getHybridUseBenefit.
class GetHybridUseBenefitResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Created date
  final String createdDate;
  /// Indicates the revision of the hybrid use benefit
  final int etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Last updated date
  final String lastUpdatedDate;
  /// The name of the resource
  final String name;
  /// Provisioning state
  final String provisioningState;
  /// Hybrid use benefit SKU
  final SkuResponse sku;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetHybridUseBenefitResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] Created date
  /// [etag] Indicates the revision of the hybrid use benefit
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastUpdatedDate] Last updated date
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state
  /// [sku] Hybrid use benefit SKU
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetHybridUseBenefitResult({
    required this.azureApiVersion,
    required this.createdDate,
    required this.etag,
    required this.id,
    required this.lastUpdatedDate,
    required this.name,
    required this.provisioningState,
    required this.sku,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdDate': createdDate,
      'etag': etag,
      'id': id,
      'lastUpdatedDate': lastUpdatedDate,
      'name': name,
      'provisioningState': provisioningState,
      'sku': sku.toMap(),
      'type': type,
    };
  }

  factory GetHybridUseBenefitResult.fromMap(Map<String, dynamic> map) {
    return GetHybridUseBenefitResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdDate: map['createdDate'] as String,
      etag: map['etag'] as int,
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

