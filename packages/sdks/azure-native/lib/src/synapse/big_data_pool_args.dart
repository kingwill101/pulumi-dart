// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_pause_properties.dart';
import 'auto_scale_properties.dart';
import 'dynamic_executor_allocation.dart';
import 'library_info.dart';
import 'library_requirements.dart';
import 'spark_config_properties.dart';

/// {@template pulumi_synapse_big_data_pool_args_doc}
/// The set of arguments for BigDataPool.
/// {@endtemplate}
/// {@macro pulumi_synapse_big_data_pool_args_doc}
class BigDataPoolArgs {
  /// Auto-pausing properties
  final pulumi.Input<AutoPauseProperties?>? autoPause;
  /// Auto-scaling properties
  final pulumi.Input<AutoScaleProperties?>? autoScale;
  /// Big Data pool name
  final pulumi.Input<String?>? bigDataPoolName;
  /// The cache size
  final pulumi.Input<int?>? cacheSize;
  /// List of custom libraries/packages associated with the spark pool.
  final pulumi.Input<List<LibraryInfo>?>? customLibraries;
  /// The default folder where Spark logs will be written.
  final pulumi.Input<String?>? defaultSparkLogFolder;
  /// Dynamic Executor Allocation
  final pulumi.Input<DynamicExecutorAllocation?>? dynamicExecutorAllocation;
  /// Whether to stop any running jobs in the Big Data pool
  final pulumi.Input<bool?>? force;
  /// Whether autotune is required or not.
  final pulumi.Input<bool?>? isAutotuneEnabled;
  /// Whether compute isolation is required or not.
  final pulumi.Input<bool?>? isComputeIsolationEnabled;
  /// Library version requirements
  final pulumi.Input<LibraryRequirements?>? libraryRequirements;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The number of nodes in the Big Data pool.
  final pulumi.Input<int?>? nodeCount;
  /// The level of compute power that each node in the Big Data pool has.
  final pulumi.Input<dynamic>? nodeSize;
  /// The kind of nodes that the Big Data pool provides.
  final pulumi.Input<dynamic>? nodeSizeFamily;
  /// The state of the Big Data pool.
  final pulumi.Input<String?>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Whether session level packages enabled.
  final pulumi.Input<bool?>? sessionLevelPackagesEnabled;
  /// Spark configuration file to specify additional properties
  final pulumi.Input<SparkConfigProperties?>? sparkConfigProperties;
  /// The Spark events folder
  final pulumi.Input<String?>? sparkEventsFolder;
  /// The Apache Spark version.
  final pulumi.Input<String?>? sparkVersion;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [BigDataPoolArgs].
  /// [autoPause] Auto-pausing properties
  /// [autoScale] Auto-scaling properties
  /// [bigDataPoolName] Big Data pool name
  /// [cacheSize] The cache size
  /// [customLibraries] List of custom libraries/packages associated with the spark pool.
  /// [defaultSparkLogFolder] The default folder where Spark logs will be written.
  /// [dynamicExecutorAllocation] Dynamic Executor Allocation
  /// [force] Whether to stop any running jobs in the Big Data pool
  /// [isAutotuneEnabled] Whether autotune is required or not.
  /// [isComputeIsolationEnabled] Whether compute isolation is required or not.
  /// [libraryRequirements] Library version requirements
  /// [location] The geo-location where the resource lives
  /// [nodeCount] The number of nodes in the Big Data pool.
  /// [nodeSize] The level of compute power that each node in the Big Data pool has.
  /// [nodeSizeFamily] The kind of nodes that the Big Data pool provides.
  /// [provisioningState] The state of the Big Data pool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sessionLevelPackagesEnabled] Whether session level packages enabled.
  /// [sparkConfigProperties] Spark configuration file to specify additional properties
  /// [sparkEventsFolder] The Spark events folder
  /// [sparkVersion] The Apache Spark version.
  /// [tags] Resource tags.
  /// [workspaceName] The name of the workspace.
  const BigDataPoolArgs({
    this.autoPause,
    this.autoScale,
    this.bigDataPoolName,
    this.cacheSize,
    this.customLibraries,
    this.defaultSparkLogFolder,
    this.dynamicExecutorAllocation,
    this.force,
    this.isAutotuneEnabled,
    this.isComputeIsolationEnabled,
    this.libraryRequirements,
    this.location,
    this.nodeCount,
    this.nodeSize,
    this.nodeSizeFamily,
    this.provisioningState,
    required this.resourceGroupName,
    this.sessionLevelPackagesEnabled,
    this.sparkConfigProperties,
    this.sparkEventsFolder,
    this.sparkVersion,
    this.tags,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPause': ?pulumi.Input.mapOptionalInputValue<AutoPauseProperties, Map<String, dynamic>>(autoPause, (value) => value.toMap()),
      'autoScale': ?pulumi.Input.mapOptionalInputValue<AutoScaleProperties, Map<String, dynamic>>(autoScale, (value) => value.toMap()),
      'bigDataPoolName': ?bigDataPoolName,
      'cacheSize': ?cacheSize,
      'customLibraries': ?pulumi.Input.mapOptionalInputValue<List<LibraryInfo>, List<Map<String, dynamic>>>(customLibraries, (value) => pulumi.Input.encodeList<LibraryInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultSparkLogFolder': ?defaultSparkLogFolder,
      'dynamicExecutorAllocation': ?pulumi.Input.mapOptionalInputValue<DynamicExecutorAllocation, Map<String, dynamic>>(dynamicExecutorAllocation, (value) => value.toMap()),
      'force': ?force,
      'isAutotuneEnabled': ?isAutotuneEnabled,
      'isComputeIsolationEnabled': ?isComputeIsolationEnabled,
      'libraryRequirements': ?pulumi.Input.mapOptionalInputValue<LibraryRequirements, Map<String, dynamic>>(libraryRequirements, (value) => value.toMap()),
      'location': ?location,
      'nodeCount': ?nodeCount,
      'nodeSize': ?nodeSize,
      'nodeSizeFamily': ?nodeSizeFamily,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'sessionLevelPackagesEnabled': ?sessionLevelPackagesEnabled,
      'sparkConfigProperties': ?pulumi.Input.mapOptionalInputValue<SparkConfigProperties, Map<String, dynamic>>(sparkConfigProperties, (value) => value.toMap()),
      'sparkEventsFolder': ?sparkEventsFolder,
      'sparkVersion': ?sparkVersion,
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory BigDataPoolArgs.fromMap(Map<String, dynamic> map) {
    return BigDataPoolArgs(
      autoPause: (() { final guardedValue = map['autoPause']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoPauseProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoScale: (() { final guardedValue = map['autoScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoScaleProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bigDataPoolName: (() { final guardedValue = map['bigDataPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheSize: (() { final guardedValue = map['cacheSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      customLibraries: (() { final guardedValue = map['customLibraries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LibraryInfo>(guardedValue, (value) => LibraryInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultSparkLogFolder: (() { final guardedValue = map['defaultSparkLogFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicExecutorAllocation: (() { final guardedValue = map['dynamicExecutorAllocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DynamicExecutorAllocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isAutotuneEnabled: (() { final guardedValue = map['isAutotuneEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isComputeIsolationEnabled: (() { final guardedValue = map['isComputeIsolationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      libraryRequirements: (() { final guardedValue = map['libraryRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LibraryRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      nodeSize: (() { final guardedValue = map['nodeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      nodeSizeFamily: (() { final guardedValue = map['nodeSizeFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sessionLevelPackagesEnabled: (() { final guardedValue = map['sessionLevelPackagesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sparkConfigProperties: (() { final guardedValue = map['sparkConfigProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkConfigProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkEventsFolder: (() { final guardedValue = map['sparkEventsFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkVersion: (() { final guardedValue = map['sparkVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
