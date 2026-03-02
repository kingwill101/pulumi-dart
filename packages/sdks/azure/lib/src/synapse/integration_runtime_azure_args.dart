// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_integration_runtime_azure_integration_runtime_azure_args_doc}
/// The set of arguments for IntegrationRuntimeAzure.
/// {@endtemplate}
/// {@macro pulumi_synapse_integration_runtime_azure_integration_runtime_azure_args_doc}
class IntegrationRuntimeAzureArgs {
  /// Compute type of the cluster which will execute data flow job. Valid values are `General`, `ComputeOptimized` and `MemoryOptimized`. Defaults to `General`.
  final pulumi.Input<String>? computeType;
  /// Core count of the cluster which will execute data flow job. Valid values are `8`, `16`, `32`, `48`, `80`, `144` and `272`. Defaults to `8`.
  final pulumi.Input<int>? coreCount;
  /// Integration runtime description.
  final pulumi.Input<String>? description;
  /// The Azure Region where the Synapse Azure Integration Runtime should exist. Use `AutoResolve` to create an auto-resolve integration runtime. Changing this forces a new Synapse Azure Integration Runtime to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Synapse Azure Integration Runtime. Changing this forces a new Synapse Azure Integration Runtime to be created.
  final pulumi.Input<String>? name;
  /// The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Azure Integration Runtime to be created.
  final pulumi.Input<String> synapseWorkspaceId;
  /// Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`.
  final pulumi.Input<int>? timeToLiveMin;

  /// Creates a new [IntegrationRuntimeAzureArgs].
  /// [computeType] Compute type of the cluster which will execute data flow job. Valid values are `General`, `ComputeOptimized` and `MemoryOptimized`. Defaults to `General`.
  /// [coreCount] Core count of the cluster which will execute data flow job. Valid values are `8`, `16`, `32`, `48`, `80`, `144` and `272`. Defaults to `8`.
  /// [description] Integration runtime description.
  /// [location] The Azure Region where the Synapse Azure Integration Runtime should exist. Use `AutoResolve` to create an auto-resolve integration runtime. Changing this forces a new Synapse Azure Integration Runtime to be created.
  /// [name] The name which should be used for this Synapse Azure Integration Runtime. Changing this forces a new Synapse Azure Integration Runtime to be created.
  /// [synapseWorkspaceId] The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Azure Integration Runtime to be created.
  /// [timeToLiveMin] Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`.
  IntegrationRuntimeAzureArgs({
    this.computeType,
    this.coreCount,
    this.description,
    this.location,
    this.name,
    required this.synapseWorkspaceId,
    this.timeToLiveMin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeType': ?computeType,
      'coreCount': ?coreCount,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'synapseWorkspaceId': synapseWorkspaceId,
      'timeToLiveMin': ?timeToLiveMin,
    };
  }

  factory IntegrationRuntimeAzureArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeAzureArgs(
      computeType: map['computeType'] == null ? null : (map['computeType']! as String).input(),
      coreCount: map['coreCount'] == null ? null : (map['coreCount']! as int).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      synapseWorkspaceId: (map['synapseWorkspaceId'] as String).input(),
      timeToLiveMin: map['timeToLiveMin'] == null ? null : (map['timeToLiveMin']! as int).input(),
    );
  }
}

