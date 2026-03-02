// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_sku.dart';
import 'optimized_autoscale.dart';

/// {@template pulumi_synapse_kusto_pool_args_doc}
/// The set of arguments for KustoPool.
/// {@endtemplate}
/// {@macro pulumi_synapse_kusto_pool_args_doc}
class KustoPoolArgs {
  /// A boolean value that indicates if the purge operations are enabled.
  final pulumi.Input<bool>? enablePurge;
  /// A boolean value that indicates if the streaming ingest is enabled.
  final pulumi.Input<bool>? enableStreamingIngest;
  /// The name of the Kusto pool.
  final pulumi.Input<String>? kustoPoolName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Optimized auto scale definition.
  final pulumi.Input<OptimizedAutoscale>? optimizedAutoscale;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the kusto pool.
  final pulumi.Input<AzureSku> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;
  /// The workspace unique identifier.
  final pulumi.Input<String>? workspaceUID;

  /// Creates a new [KustoPoolArgs].
  /// [enablePurge] A boolean value that indicates if the purge operations are enabled.
  /// [enableStreamingIngest] A boolean value that indicates if the streaming ingest is enabled.
  /// [kustoPoolName] The name of the Kusto pool.
  /// [location] The geo-location where the resource lives
  /// [optimizedAutoscale] Optimized auto scale definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU of the kusto pool.
  /// [tags] Resource tags.
  /// [workspaceName] The name of the workspace.
  /// [workspaceUID] The workspace unique identifier.
  KustoPoolArgs({
    this.enablePurge,
    this.enableStreamingIngest,
    this.kustoPoolName,
    this.location,
    this.optimizedAutoscale,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
    required this.workspaceName,
    this.workspaceUID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePurge': ?enablePurge,
      'enableStreamingIngest': ?enableStreamingIngest,
      'kustoPoolName': ?kustoPoolName,
      'location': ?location,
      'optimizedAutoscale': ?pulumi.Input.mapOptionalInputValue<OptimizedAutoscale, Map<String, dynamic>>(optimizedAutoscale, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<AzureSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': workspaceName,
      'workspaceUID': ?workspaceUID,
    };
  }

  factory KustoPoolArgs.fromMap(Map<String, dynamic> map) {
    return KustoPoolArgs(
      enablePurge: map['enablePurge'] == null ? null : (map['enablePurge']! as bool).input(),
      enableStreamingIngest: map['enableStreamingIngest'] == null ? null : (map['enableStreamingIngest']! as bool).input(),
      kustoPoolName: map['kustoPoolName'] == null ? null : (map['kustoPoolName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      optimizedAutoscale: map['optimizedAutoscale'] == null ? null : (OptimizedAutoscale.fromMap((map['optimizedAutoscale']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (AzureSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceName: (map['workspaceName'] as String).input(),
      workspaceUID: map['workspaceUID'] == null ? null : (map['workspaceUID']! as String).input(),
    );
  }
}

