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
  const SparkPoolArgs({
    this.autoPause,
    this.autoScale,
    this.cacheSize,
    this.computeIsolationEnabled,
    this.dynamicExecutorAllocationEnabled,
    this.libraryRequirement,
    this.maxExecutors,
    this.minExecutors,
    this.name,
    this.nodeCount,
    required this.nodeSize,
    required this.nodeSizeFamily,
    this.sessionLevelPackagesEnabled,
    this.sparkConfig,
    this.sparkEventsFolder,
    this.sparkLogFolder,
    required this.sparkVersion,
    required this.synapseWorkspaceId,
    this.tags,
  });

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
      autoPause: (() { final guardedValue = map['autoPause']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkPoolAutoPause.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoScale: (() { final guardedValue = map['autoScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkPoolAutoScale.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheSize: (() { final guardedValue = map['cacheSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      computeIsolationEnabled: (() { final guardedValue = map['computeIsolationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dynamicExecutorAllocationEnabled: (() { final guardedValue = map['dynamicExecutorAllocationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      libraryRequirement: (() { final guardedValue = map['libraryRequirement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkPoolLibraryRequirement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxExecutors: (() { final guardedValue = map['maxExecutors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minExecutors: (() { final guardedValue = map['minExecutors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeSize: pulumi.Input.fromValue(map['nodeSize'] as String),
      nodeSizeFamily: pulumi.Input.fromValue(map['nodeSizeFamily'] as String),
      sessionLevelPackagesEnabled: (() { final guardedValue = map['sessionLevelPackagesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sparkConfig: (() { final guardedValue = map['sparkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkPoolSparkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkEventsFolder: (() { final guardedValue = map['sparkEventsFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkLogFolder: (() { final guardedValue = map['sparkLogFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkVersion: pulumi.Input.fromValue(map['sparkVersion'] as String),
      synapseWorkspaceId: pulumi.Input.fromValue(map['synapseWorkspaceId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

