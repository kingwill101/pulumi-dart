// ignore_for_file: unused_element, unnecessary_cast

import 'sku_response.dart';

/// Result data returned by getHybridUseBenefit.
class GetHybridUseBenefitResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Created date
  final String? createdDate;
  /// Indicates the revision of the hybrid use benefit
  final int? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Last updated date
  final String? lastUpdatedDate;
  /// The name of the resource
  final String? name;
  /// Provisioning state
  final String? provisioningState;
  /// Hybrid use benefit SKU
  final SkuResponse? sku;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetHybridUseBenefitResult({
    this.azureApiVersion,
    this.createdDate,
    this.etag,
    this.id,
    this.lastUpdatedDate,
    this.name,
    this.provisioningState,
    this.sku,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdDate': ?createdDate,
      'etag': ?etag,
      'id': ?id,
      'lastUpdatedDate': ?lastUpdatedDate,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'type': ?type,
    };
  }

  factory GetHybridUseBenefitResult.fromMap(Map<String, dynamic> map) {
    return GetHybridUseBenefitResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedDate: (() { final guardedValue = map['lastUpdatedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
