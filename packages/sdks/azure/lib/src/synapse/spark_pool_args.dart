// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spark_pool_auto_pause.dart';
import 'spark_pool_auto_scale.dart';
import 'spark_pool_library_requirement.dart';
import 'spark_pool_spark_config.dart';

/// {@template pulumi_synapse_spark_pool_spark_pool_args_doc}
/// The set of arguments for SparkPool.
/// {@endtemplate}
/// {@macro pulumi_synapse_spark_pool_spark_pool_args_doc}
class SparkPoolArgs {
  /// An `auto_pause` block as defined below.
  final pulumi.Input<SparkPoolAutoPause>? autoPause;
  /// An `auto_scale` block as defined below. Exactly one of `node_count` or `auto_scale` must be specified.
  final pulumi.Input<SparkPoolAutoScale>? autoScale;
  /// The cache size in the Spark Pool.
  final pulumi.Input<int>? cacheSize;
  /// Indicates whether compute isolation is enabled or not. Defaults to `false`.
  final pulumi.Input<bool>? computeIsolationEnabled;
  final pulumi.Input<bool>? dynamicExecutorAllocationEnabled;
  final pulumi.Input<SparkPoolLibraryRequirement>? libraryRequirement;
  final pulumi.Input<int>? maxExecutors;
  final pulumi.Input<int>? minExecutors;
  /// The name which should be used for this Synapse Spark Pool. Changing this forces a new Synapse Spark Pool to be created.
  final pulumi.Input<String>? name;
  /// The number of nodes in the Spark Pool. Exactly one of `node_count` or `auto_scale` must be specified.
  final pulumi.Input<int>? nodeCount;
  /// The level of node in the Spark Pool. Possible values are `Small`, `Medium`, `Large`, `None`, `XLarge`, `XXLarge` and `XXXLarge`.
  final pulumi.Input<String> nodeSize;
  /// The kind of nodes that the Spark Pool provides. Possible values are `HardwareAcceleratedFPGA`, `HardwareAcceleratedGPU`, `MemoryOptimized`, and `None`.
  final pulumi.Input<String> nodeSizeFamily;
  final pulumi.Input<bool>? sessionLevelPackagesEnabled;
  final pulumi.Input<SparkPoolSparkConfig>? sparkConfig;
  final pulumi.Input<String>? sparkEventsFolder;
  final pulumi.Input<String>? sparkLogFolder;
  /// The Apache Spark version. Possible values are `3.4` and `3.5`.
  final pulumi.Input<String> sparkVersion;
  /// The ID of the Synapse Workspace where the Synapse Spark Pool should exist. Changing this forces a new Synapse Spark Pool to be created.
  final pulumi.Input<String> synapseWorkspaceId;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SparkPoolArgs].
  /// [autoPause] An `auto_pause` block as defined below.
  /// [autoScale] An `auto_scale` block as defined below. Exactly one of `node_count` or `auto_scale` must be specified.
  /// [cacheSize] The cache size in the Spark Pool.
  /// [computeIsolationEnabled] Indicates whether compute isolation is enabled or not. Defaults to `false`.
  /// [dynamicExecutorAllocationEnabled] Optional.
  /// [libraryRequirement] Optional.
  /// [maxExecutors] Optional.
  /// [minExecutors] Optional.
  /// [name] The name which should be used for this Synapse Spark Pool. Changing this forces a new Synapse Spark Pool to be created.
  /// [nodeCount] The number of nodes in the Spark Pool. Exactly one of `node_count` or `auto_scale` must be specified.
  /// [nodeSize] The level of node in the Spark Pool. Possible values are `Small`, `Medium`, `Large`, `None`, `XLarge`, `XXLarge` and `XXXLarge`.
  /// [nodeSizeFamily] The kind of nodes that the Spark Pool provides. Possible values are `HardwareAcceleratedFPGA`, `HardwareAcceleratedGPU`, `MemoryOptimized`, and `None`.
  /// [sessionLevelPackagesEnabled] Optional.
  /// [sparkConfig] Optional.
  /// [sparkEventsFolder] Optional.
  /// [sparkLogFolder] Optional.
  /// [sparkVersion] The Apache Spark version. Possible values are `3.4` and `3.5`.
  /// [synapseWorkspaceId] The ID of the Synapse Workspace where the Synapse Spark Pool should exist. Changing this forces a new Synapse Spark Pool to be created.
  /// [tags] Optional.
  SparkPoolArgs({
    pulumi.Output<SparkPoolAutoPause>? autoPause,
    pulumi.Output<SparkPoolAutoScale>? autoScale,
    pulumi.Output<int>? cacheSize,
    pulumi.Output<bool>? computeIsolationEnabled,
    pulumi.Output<bool>? dynamicExecutorAllocationEnabled,
    pulumi.Output<SparkPoolLibraryRequirement>? libraryRequirement,
    pulumi.Output<int>? maxExecutors,
    pulumi.Output<int>? minExecutors,
    pulumi.Output<String>? name,
    pulumi.Output<int>? nodeCount,
    required pulumi.Output<String> nodeSize,
    required pulumi.Output<String> nodeSizeFamily,
    pulumi.Output<bool>? sessionLevelPackagesEnabled,
    pulumi.Output<SparkPoolSparkConfig>? sparkConfig,
    pulumi.Output<String>? sparkEventsFolder,
    pulumi.Output<String>? sparkLogFolder,
    required pulumi.Output<String> sparkVersion,
    required pulumi.Output<String> synapseWorkspaceId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      autoPause = pulumi.Input.asOptionalInput<SparkPoolAutoPause>(autoPause),
      autoScale = pulumi.Input.asOptionalInput<SparkPoolAutoScale>(autoScale),
      cacheSize = pulumi.Input.asOptionalInput<int>(cacheSize),
      computeIsolationEnabled = pulumi.Input.asOptionalInput<bool>(computeIsolationEnabled),
      dynamicExecutorAllocationEnabled = pulumi.Input.asOptionalInput<bool>(dynamicExecutorAllocationEnabled),
      libraryRequirement = pulumi.Input.asOptionalInput<SparkPoolLibraryRequirement>(libraryRequirement),
      maxExecutors = pulumi.Input.asOptionalInput<int>(maxExecutors),
      minExecutors = pulumi.Input.asOptionalInput<int>(minExecutors),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      nodeSize = pulumi.Input.asInput<String>(nodeSize),
      nodeSizeFamily = pulumi.Input.asInput<String>(nodeSizeFamily),
      sessionLevelPackagesEnabled = pulumi.Input.asOptionalInput<bool>(sessionLevelPackagesEnabled),
      sparkConfig = pulumi.Input.asOptionalInput<SparkPoolSparkConfig>(sparkConfig),
      sparkEventsFolder = pulumi.Input.asOptionalInput<String>(sparkEventsFolder),
      sparkLogFolder = pulumi.Input.asOptionalInput<String>(sparkLogFolder),
      sparkVersion = pulumi.Input.asInput<String>(sparkVersion),
      synapseWorkspaceId = pulumi.Input.asInput<String>(synapseWorkspaceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPause': ?pulumi.Input.mapOptionalInputValue<SparkPoolAutoPause, Map<String, dynamic>>(autoPause, (value) => value.toMap()),
      'autoScale': ?pulumi.Input.mapOptionalInputValue<SparkPoolAutoScale, Map<String, dynamic>>(autoScale, (value) => value.toMap()),
      'cacheSize': ?cacheSize,
      'computeIsolationEnabled': ?computeIsolationEnabled,
      'dynamicExecutorAllocationEnabled': ?dynamicExecutorAllocationEnabled,
      'libraryRequirement': ?pulumi.Input.mapOptionalInputValue<SparkPoolLibraryRequirement, Map<String, dynamic>>(libraryRequirement, (value) => value.toMap()),
      'maxExecutors': ?maxExecutors,
      'minExecutors': ?minExecutors,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'nodeSize': nodeSize,
      'nodeSizeFamily': nodeSizeFamily,
      'sessionLevelPackagesEnabled': ?sessionLevelPackagesEnabled,
      'sparkConfig': ?pulumi.Input.mapOptionalInputValue<SparkPoolSparkConfig, Map<String, dynamic>>(sparkConfig, (value) => value.toMap()),
      'sparkEventsFolder': ?sparkEventsFolder,
      'sparkLogFolder': ?sparkLogFolder,
      'sparkVersion': sparkVersion,
      'synapseWorkspaceId': synapseWorkspaceId,
      'tags': ?tags,
    };
  }

  factory SparkPoolArgs.fromMap(Map<String, dynamic> map) {
    return SparkPoolArgs(
      autoPause: map['autoPause'] == null ? null : pulumi.Output.create<SparkPoolAutoPause>(SparkPoolAutoPause.fromMap((map['autoPause'] as Map).cast<String, dynamic>())),
      autoScale: map['autoScale'] == null ? null : pulumi.Output.create<SparkPoolAutoScale>(SparkPoolAutoScale.fromMap((map['autoScale'] as Map).cast<String, dynamic>())),
      cacheSize: map['cacheSize'] == null ? null : pulumi.Output.create<int>(map['cacheSize'] as int),
      computeIsolationEnabled: map['computeIsolationEnabled'] == null ? null : pulumi.Output.create<bool>(map['computeIsolationEnabled'] as bool),
      dynamicExecutorAllocationEnabled: map['dynamicExecutorAllocationEnabled'] == null ? null : pulumi.Output.create<bool>(map['dynamicExecutorAllocationEnabled'] as bool),
      libraryRequirement: map['libraryRequirement'] == null ? null : pulumi.Output.create<SparkPoolLibraryRequirement>(SparkPoolLibraryRequirement.fromMap((map['libraryRequirement'] as Map).cast<String, dynamic>())),
      maxExecutors: map['maxExecutors'] == null ? null : pulumi.Output.create<int>(map['maxExecutors'] as int),
      minExecutors: map['minExecutors'] == null ? null : pulumi.Output.create<int>(map['minExecutors'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      nodeSize: pulumi.Output.create<String>(map['nodeSize'] as String),
      nodeSizeFamily: pulumi.Output.create<String>(map['nodeSizeFamily'] as String),
      sessionLevelPackagesEnabled: map['sessionLevelPackagesEnabled'] == null ? null : pulumi.Output.create<bool>(map['sessionLevelPackagesEnabled'] as bool),
      sparkConfig: map['sparkConfig'] == null ? null : pulumi.Output.create<SparkPoolSparkConfig>(SparkPoolSparkConfig.fromMap((map['sparkConfig'] as Map).cast<String, dynamic>())),
      sparkEventsFolder: map['sparkEventsFolder'] == null ? null : pulumi.Output.create<String>(map['sparkEventsFolder'] as String),
      sparkLogFolder: map['sparkLogFolder'] == null ? null : pulumi.Output.create<String>(map['sparkLogFolder'] as String),
      sparkVersion: pulumi.Output.create<String>(map['sparkVersion'] as String),
      synapseWorkspaceId: pulumi.Output.create<String>(map['synapseWorkspaceId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

