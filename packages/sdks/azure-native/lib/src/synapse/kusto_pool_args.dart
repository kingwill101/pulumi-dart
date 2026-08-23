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
  const KustoPoolArgs({
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
      enablePurge: (() { final guardedValue = map['enablePurge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableStreamingIngest: (() { final guardedValue = map['enableStreamingIngest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kustoPoolName: (() { final guardedValue = map['kustoPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optimizedAutoscale: (() { final guardedValue = map['optimizedAutoscale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OptimizedAutoscale.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(AzureSku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
      workspaceUID: (() { final guardedValue = map['workspaceUID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
