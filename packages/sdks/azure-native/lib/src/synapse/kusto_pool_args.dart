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
    pulumi.Output<bool>? enablePurge,
    pulumi.Output<bool>? enableStreamingIngest,
    pulumi.Output<String>? kustoPoolName,
    pulumi.Output<String>? location,
    pulumi.Output<OptimizedAutoscale>? optimizedAutoscale,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<AzureSku> sku,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
    pulumi.Output<String>? workspaceUID,
  }) :
      enablePurge = pulumi.Input.asOptionalInput<bool>(enablePurge),
      enableStreamingIngest = pulumi.Input.asOptionalInput<bool>(enableStreamingIngest),
      kustoPoolName = pulumi.Input.asOptionalInput<String>(kustoPoolName),
      location = pulumi.Input.asOptionalInput<String>(location),
      optimizedAutoscale = pulumi.Input.asOptionalInput<OptimizedAutoscale>(optimizedAutoscale),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<AzureSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName),
      workspaceUID = pulumi.Input.asOptionalInput<String>(workspaceUID);

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
      enablePurge: map['enablePurge'] == null ? null : pulumi.Output.create<bool>(map['enablePurge'] as bool),
      enableStreamingIngest: map['enableStreamingIngest'] == null ? null : pulumi.Output.create<bool>(map['enableStreamingIngest'] as bool),
      kustoPoolName: map['kustoPoolName'] == null ? null : pulumi.Output.create<String>(map['kustoPoolName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      optimizedAutoscale: map['optimizedAutoscale'] == null ? null : pulumi.Output.create<OptimizedAutoscale>(OptimizedAutoscale.fromMap((map['optimizedAutoscale'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: pulumi.Output.create<AzureSku>(AzureSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
      workspaceUID: map['workspaceUID'] == null ? null : pulumi.Output.create<String>(map['workspaceUID'] as String),
    );
  }
}

