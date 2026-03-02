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
  final pulumi.Input<AutoPauseProperties>? autoPause;
  /// Auto-scaling properties
  final pulumi.Input<AutoScaleProperties>? autoScale;
  /// Big Data pool name
  final pulumi.Input<String>? bigDataPoolName;
  /// The cache size
  final pulumi.Input<int>? cacheSize;
  /// List of custom libraries/packages associated with the spark pool.
  final pulumi.Input<List<LibraryInfo>>? customLibraries;
  /// The default folder where Spark logs will be written.
  final pulumi.Input<String>? defaultSparkLogFolder;
  /// Dynamic Executor Allocation
  final pulumi.Input<DynamicExecutorAllocation>? dynamicExecutorAllocation;
  /// Whether to stop any running jobs in the Big Data pool
  final pulumi.Input<bool>? force;
  /// Whether autotune is required or not.
  final pulumi.Input<bool>? isAutotuneEnabled;
  /// Whether compute isolation is required or not.
  final pulumi.Input<bool>? isComputeIsolationEnabled;
  /// Library version requirements
  final pulumi.Input<LibraryRequirements>? libraryRequirements;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The number of nodes in the Big Data pool.
  final pulumi.Input<int>? nodeCount;
  /// The level of compute power that each node in the Big Data pool has.
  final pulumi.Input<String>? nodeSize;
  /// The kind of nodes that the Big Data pool provides.
  final pulumi.Input<String>? nodeSizeFamily;
  /// The state of the Big Data pool.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Whether session level packages enabled.
  final pulumi.Input<bool>? sessionLevelPackagesEnabled;
  /// Spark configuration file to specify additional properties
  final pulumi.Input<SparkConfigProperties>? sparkConfigProperties;
  /// The Spark events folder
  final pulumi.Input<String>? sparkEventsFolder;
  /// The Apache Spark version.
  final pulumi.Input<String>? sparkVersion;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
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
  BigDataPoolArgs({
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
      autoPause: map['autoPause'] == null ? null : (AutoPauseProperties.fromMap((map['autoPause']! as Map).cast<String, dynamic>())).input(),
      autoScale: map['autoScale'] == null ? null : (AutoScaleProperties.fromMap((map['autoScale']! as Map).cast<String, dynamic>())).input(),
      bigDataPoolName: map['bigDataPoolName'] == null ? null : (map['bigDataPoolName']! as String).input(),
      cacheSize: map['cacheSize'] == null ? null : (map['cacheSize']! as int).input(),
      customLibraries: map['customLibraries'] == null ? null : (pulumi.Input.decodeList<LibraryInfo>(map['customLibraries']!, (value) => LibraryInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultSparkLogFolder: map['defaultSparkLogFolder'] == null ? null : (map['defaultSparkLogFolder']! as String).input(),
      dynamicExecutorAllocation: map['dynamicExecutorAllocation'] == null ? null : (DynamicExecutorAllocation.fromMap((map['dynamicExecutorAllocation']! as Map).cast<String, dynamic>())).input(),
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      isAutotuneEnabled: map['isAutotuneEnabled'] == null ? null : (map['isAutotuneEnabled']! as bool).input(),
      isComputeIsolationEnabled: map['isComputeIsolationEnabled'] == null ? null : (map['isComputeIsolationEnabled']! as bool).input(),
      libraryRequirements: map['libraryRequirements'] == null ? null : (LibraryRequirements.fromMap((map['libraryRequirements']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount']! as int).input(),
      nodeSize: map['nodeSize'] == null ? null : (map['nodeSize']! as String).input(),
      nodeSizeFamily: map['nodeSizeFamily'] == null ? null : (map['nodeSizeFamily']! as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sessionLevelPackagesEnabled: map['sessionLevelPackagesEnabled'] == null ? null : (map['sessionLevelPackagesEnabled']! as bool).input(),
      sparkConfigProperties: map['sparkConfigProperties'] == null ? null : (SparkConfigProperties.fromMap((map['sparkConfigProperties']! as Map).cast<String, dynamic>())).input(),
      sparkEventsFolder: map['sparkEventsFolder'] == null ? null : (map['sparkEventsFolder']! as String).input(),
      sparkVersion: map['sparkVersion'] == null ? null : (map['sparkVersion']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

