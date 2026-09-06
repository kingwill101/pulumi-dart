// ignore_for_file: unused_element, unnecessary_cast

import 'premium_mdti_data_connector_data_types_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPremiumMicrosoftDefenderForThreatIntelligence.
class GetPremiumMicrosoftDefenderForThreatIntelligenceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The available data types for the connector.
  final PremiumMdtiDataConnectorDataTypesResponse? dataTypes;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The kind of the data connector
  /// Expected value is 'PremiumMicrosoftDefenderForThreatIntelligence'.
  final String? kind;
  /// The lookback period for the feed to be imported. The date-time to begin importing the feed from, for example: 2024-01-01T00:00:00.000Z.
  final String? lookbackPeriod;
  /// The name of the resource
  final String? name;
  /// The flag to indicate whether the tenant has the premium SKU required to access this connector.
  final bool? requiredSKUsPresent;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The tenant id to connect to, and get the data from.
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetPremiumMicrosoftDefenderForThreatIntelligenceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataTypes] The available data types for the connector.
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The kind of the data connector
  /// [lookbackPeriod] The lookback period for the feed to be imported. The date-time to begin importing the feed from, for example: 2024-01-01T00:00:00.000Z.
  /// [name] The name of the resource
  /// [requiredSKUsPresent] The flag to indicate whether the tenant has the premium SKU required to access this connector.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] The tenant id to connect to, and get the data from.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetPremiumMicrosoftDefenderForThreatIntelligenceResult({
    this.azureApiVersion,
    this.dataTypes,
    this.etag,
    this.id,
    this.kind,
    this.lookbackPeriod,
    this.name,
    this.requiredSKUsPresent,
    this.systemData,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataTypes': ?dataTypes?.toMap(),
      'etag': ?etag,
      'id': ?id,
      'kind': ?kind,
      'lookbackPeriod': ?lookbackPeriod,
      'name': ?name,
      'requiredSKUsPresent': ?requiredSKUsPresent,
      'systemData': ?systemData?.toMap(),
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetPremiumMicrosoftDefenderForThreatIntelligenceResult.fromMap(Map<String, dynamic> map) {
    return GetPremiumMicrosoftDefenderForThreatIntelligenceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataTypes: (() { final guardedValue = map['dataTypes']; if (guardedValue == null) return null; return PremiumMdtiDataConnectorDataTypesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lookbackPeriod: (() { final guardedValue = map['lookbackPeriod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiredSKUsPresent: (() { final guardedValue = map['requiredSKUsPresent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
