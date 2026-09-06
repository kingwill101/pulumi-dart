// ignore_for_file: unused_element, unnecessary_cast

import 'azure_sku_response.dart';
import 'language_extensions_list_response.dart';
import 'optimized_autoscale_response.dart';
import 'system_data_response.dart';

/// Result data returned by getKustoPool.
class GetKustoPoolResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The Kusto Pool data ingestion URI.
  final String? dataIngestionUri;
  /// A boolean value that indicates if the purge operations are enabled.
  final bool? enablePurge;
  /// A boolean value that indicates if the streaming ingest is enabled.
  final bool? enableStreamingIngest;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// List of the Kusto Pool's language extensions.
  final LanguageExtensionsListResponse? languageExtensions;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Optimized auto scale definition.
  final OptimizedAutoscaleResponse? optimizedAutoscale;
  /// The provisioned state of the resource.
  final String? provisioningState;
  /// The SKU of the kusto pool.
  final AzureSkuResponse? sku;
  /// The state of the resource.
  final String? state;
  /// The reason for the Kusto Pool's current state.
  final String? stateReason;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The Kusto Pool URI.
  final String? uri;
  /// The workspace unique identifier.
  final String? workspaceUID;

  /// Creates a new [GetKustoPoolResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataIngestionUri] The Kusto Pool data ingestion URI.
  /// [enablePurge] A boolean value that indicates if the purge operations are enabled.
  /// [enableStreamingIngest] A boolean value that indicates if the streaming ingest is enabled.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [languageExtensions] List of the Kusto Pool's language extensions.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [optimizedAutoscale] Optimized auto scale definition.
  /// [provisioningState] The provisioned state of the resource.
  /// [sku] The SKU of the kusto pool.
  /// [state] The state of the resource.
  /// [stateReason] The reason for the Kusto Pool's current state.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uri] The Kusto Pool URI.
  /// [workspaceUID] The workspace unique identifier.
  GetKustoPoolResult({
    this.azureApiVersion,
    this.dataIngestionUri,
    bool? enablePurge,
    bool? enableStreamingIngest,
    this.etag,
    this.id,
    this.languageExtensions,
    this.location,
    this.name,
    this.optimizedAutoscale,
    this.provisioningState,
    this.sku,
    this.state,
    this.stateReason,
    this.systemData,
    this.tags,
    this.type,
    this.uri,
    this.workspaceUID,
  }) : enablePurge = enablePurge ?? false, enableStreamingIngest = enableStreamingIngest ?? false;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataIngestionUri': ?dataIngestionUri,
      'enablePurge': ?enablePurge,
      'enableStreamingIngest': ?enableStreamingIngest,
      'etag': ?etag,
      'id': ?id,
      'languageExtensions': ?languageExtensions?.toMap(),
      'location': ?location,
      'name': ?name,
      'optimizedAutoscale': ?optimizedAutoscale?.toMap(),
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'state': ?state,
      'stateReason': ?stateReason,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uri': ?uri,
      'workspaceUID': ?workspaceUID,
    };
  }

  factory GetKustoPoolResult.fromMap(Map<String, dynamic> map) {
    return GetKustoPoolResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataIngestionUri: (() { final guardedValue = map['dataIngestionUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enablePurge: (() { final guardedValue = map['enablePurge']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableStreamingIngest: (() { final guardedValue = map['enableStreamingIngest']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      languageExtensions: (() { final guardedValue = map['languageExtensions']; if (guardedValue == null) return null; return LanguageExtensionsListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      optimizedAutoscale: (() { final guardedValue = map['optimizedAutoscale']; if (guardedValue == null) return null; return OptimizedAutoscaleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return AzureSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceUID: (() { final guardedValue = map['workspaceUID']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
