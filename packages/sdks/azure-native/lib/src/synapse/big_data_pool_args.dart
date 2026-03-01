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
    pulumi.Output<AutoPauseProperties>? autoPause,
    pulumi.Output<AutoScaleProperties>? autoScale,
    pulumi.Output<String>? bigDataPoolName,
    pulumi.Output<int>? cacheSize,
    pulumi.Output<List<LibraryInfo>>? customLibraries,
    pulumi.Output<String>? defaultSparkLogFolder,
    pulumi.Output<DynamicExecutorAllocation>? dynamicExecutorAllocation,
    pulumi.Output<bool>? force,
    pulumi.Output<bool>? isAutotuneEnabled,
    pulumi.Output<bool>? isComputeIsolationEnabled,
    pulumi.Output<LibraryRequirements>? libraryRequirements,
    pulumi.Output<String>? location,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<String>? nodeSize,
    pulumi.Output<String>? nodeSizeFamily,
    pulumi.Output<String>? provisioningState,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? sessionLevelPackagesEnabled,
    pulumi.Output<SparkConfigProperties>? sparkConfigProperties,
    pulumi.Output<String>? sparkEventsFolder,
    pulumi.Output<String>? sparkVersion,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
  }) :
      autoPause = pulumi.Input.asOptionalInput<AutoPauseProperties>(autoPause),
      autoScale = pulumi.Input.asOptionalInput<AutoScaleProperties>(autoScale),
      bigDataPoolName = pulumi.Input.asOptionalInput<String>(bigDataPoolName),
      cacheSize = pulumi.Input.asOptionalInput<int>(cacheSize),
      customLibraries = pulumi.Input.asOptionalInput<List<LibraryInfo>>(customLibraries),
      defaultSparkLogFolder = pulumi.Input.asOptionalInput<String>(defaultSparkLogFolder),
      dynamicExecutorAllocation = pulumi.Input.asOptionalInput<DynamicExecutorAllocation>(dynamicExecutorAllocation),
      force = pulumi.Input.asOptionalInput<bool>(force),
      isAutotuneEnabled = pulumi.Input.asOptionalInput<bool>(isAutotuneEnabled),
      isComputeIsolationEnabled = pulumi.Input.asOptionalInput<bool>(isComputeIsolationEnabled),
      libraryRequirements = pulumi.Input.asOptionalInput<LibraryRequirements>(libraryRequirements),
      location = pulumi.Input.asOptionalInput<String>(location),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      nodeSize = pulumi.Input.asOptionalInput<String>(nodeSize),
      nodeSizeFamily = pulumi.Input.asOptionalInput<String>(nodeSizeFamily),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sessionLevelPackagesEnabled = pulumi.Input.asOptionalInput<bool>(sessionLevelPackagesEnabled),
      sparkConfigProperties = pulumi.Input.asOptionalInput<SparkConfigProperties>(sparkConfigProperties),
      sparkEventsFolder = pulumi.Input.asOptionalInput<String>(sparkEventsFolder),
      sparkVersion = pulumi.Input.asOptionalInput<String>(sparkVersion),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      autoPause: map['autoPause'] == null ? null : pulumi.Output.create<AutoPauseProperties>(AutoPauseProperties.fromMap((map['autoPause'] as Map).cast<String, dynamic>())),
      autoScale: map['autoScale'] == null ? null : pulumi.Output.create<AutoScaleProperties>(AutoScaleProperties.fromMap((map['autoScale'] as Map).cast<String, dynamic>())),
      bigDataPoolName: map['bigDataPoolName'] == null ? null : pulumi.Output.create<String>(map['bigDataPoolName'] as String),
      cacheSize: map['cacheSize'] == null ? null : pulumi.Output.create<int>(map['cacheSize'] as int),
      customLibraries: map['customLibraries'] == null ? null : pulumi.Output.create<List<LibraryInfo>>(pulumi.Input.decodeList<LibraryInfo>(map['customLibraries'], (value) => LibraryInfo.fromMap((value as Map).cast<String, dynamic>()))),
      defaultSparkLogFolder: map['defaultSparkLogFolder'] == null ? null : pulumi.Output.create<String>(map['defaultSparkLogFolder'] as String),
      dynamicExecutorAllocation: map['dynamicExecutorAllocation'] == null ? null : pulumi.Output.create<DynamicExecutorAllocation>(DynamicExecutorAllocation.fromMap((map['dynamicExecutorAllocation'] as Map).cast<String, dynamic>())),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      isAutotuneEnabled: map['isAutotuneEnabled'] == null ? null : pulumi.Output.create<bool>(map['isAutotuneEnabled'] as bool),
      isComputeIsolationEnabled: map['isComputeIsolationEnabled'] == null ? null : pulumi.Output.create<bool>(map['isComputeIsolationEnabled'] as bool),
      libraryRequirements: map['libraryRequirements'] == null ? null : pulumi.Output.create<LibraryRequirements>(LibraryRequirements.fromMap((map['libraryRequirements'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      nodeSize: map['nodeSize'] == null ? null : pulumi.Output.create<String>(map['nodeSize'] as String),
      nodeSizeFamily: map['nodeSizeFamily'] == null ? null : pulumi.Output.create<String>(map['nodeSizeFamily'] as String),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sessionLevelPackagesEnabled: map['sessionLevelPackagesEnabled'] == null ? null : pulumi.Output.create<bool>(map['sessionLevelPackagesEnabled'] as bool),
      sparkConfigProperties: map['sparkConfigProperties'] == null ? null : pulumi.Output.create<SparkConfigProperties>(SparkConfigProperties.fromMap((map['sparkConfigProperties'] as Map).cast<String, dynamic>())),
      sparkEventsFolder: map['sparkEventsFolder'] == null ? null : pulumi.Output.create<String>(map['sparkEventsFolder'] as String),
      sparkVersion: map['sparkVersion'] == null ? null : pulumi.Output.create<String>(map['sparkVersion'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

