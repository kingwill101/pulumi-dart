// ignore_for_file: unused_element, unnecessary_cast

import 'azure_sku_response.dart';
import 'language_extensions_list_response.dart';
import 'optimized_autoscale_response.dart';
import 'system_data_response.dart';

/// Result data returned by getKustoPool.
class GetKustoPoolResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The Kusto Pool data ingestion URI.
  final String dataIngestionUri;
  /// A boolean value that indicates if the purge operations are enabled.
  final bool? enablePurge;
  /// A boolean value that indicates if the streaming ingest is enabled.
  final bool? enableStreamingIngest;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// List of the Kusto Pool's language extensions.
  final LanguageExtensionsListResponse languageExtensions;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Optimized auto scale definition.
  final OptimizedAutoscaleResponse? optimizedAutoscale;
  /// The provisioned state of the resource.
  final String provisioningState;
  /// The SKU of the kusto pool.
  final AzureSkuResponse sku;
  /// The state of the resource.
  final String state;
  /// The reason for the Kusto Pool's current state.
  final String stateReason;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The Kusto Pool URI.
  final String uri;
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
  const GetKustoPoolResult({
    required this.azureApiVersion,
    required this.dataIngestionUri,
    this.enablePurge,
    this.enableStreamingIngest,
    required this.etag,
    required this.id,
    required this.languageExtensions,
    required this.location,
    required this.name,
    this.optimizedAutoscale,
    required this.provisioningState,
    required this.sku,
    required this.state,
    required this.stateReason,
    required this.systemData,
    this.tags,
    required this.type,
    required this.uri,
    this.workspaceUID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataIngestionUri': dataIngestionUri,
      'enablePurge': ?enablePurge,
      'enableStreamingIngest': ?enableStreamingIngest,
      'etag': etag,
      'id': id,
      'languageExtensions': languageExtensions.toMap(),
      'location': location,
      'name': name,
      'optimizedAutoscale': ?optimizedAutoscale?.toMap(),
      'provisioningState': provisioningState,
      'sku': sku.toMap(),
      'state': state,
      'stateReason': stateReason,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uri': uri,
      'workspaceUID': ?workspaceUID,
    };
  }

  factory GetKustoPoolResult.fromMap(Map<String, dynamic> map) {
    return GetKustoPoolResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataIngestionUri: map['dataIngestionUri'] as String,
      enablePurge: (() { final guardedValue = map['enablePurge']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableStreamingIngest: (() { final guardedValue = map['enableStreamingIngest']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      languageExtensions: LanguageExtensionsListResponse.fromMap((map['languageExtensions']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      optimizedAutoscale: (() { final guardedValue = map['optimizedAutoscale']; if (guardedValue == null) return null; return OptimizedAutoscaleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      sku: AzureSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      stateReason: map['stateReason'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      uri: map['uri'] as String,
      workspaceUID: (() { final guardedValue = map['workspaceUID']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
