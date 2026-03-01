// ignore_for_file: unused_element, unnecessary_cast


class LinkedServiceAzureDatabricksNewClusterConfig {
  /// Spark version of a the cluster.
  final String clusterVersion;
  /// Tags for the cluster resource.
  final Map<String, String>? customTags;
  /// Driver node type for the cluster.
  final String? driverNodeType;
  /// User defined initialization scripts for the cluster.
  final List<String>? initScripts;
  /// Location to deliver Spark driver, worker, and event logs.
  final String? logDestination;
  /// Specifies the maximum number of worker nodes. It should be between 1 and 25000.
  final int? maxNumberOfWorkers;
  /// Specifies the minimum number of worker nodes. It should be between 1 and 25000. It defaults to `1`.
  final int? minNumberOfWorkers;
  /// Node type for the new cluster.
  final String nodeType;
  /// User-specified Spark configuration variables key-value pairs.
  final Map<String, String>? sparkConfig;
  /// User-specified Spark environment variables key-value pairs.
  final Map<String, String>? sparkEnvironmentVariables;

  /// Creates a new [LinkedServiceAzureDatabricksNewClusterConfig].
  /// [clusterVersion] Spark version of a the cluster.
  /// [customTags] Tags for the cluster resource.
  /// [driverNodeType] Driver node type for the cluster.
  /// [initScripts] User defined initialization scripts for the cluster.
  /// [logDestination] Location to deliver Spark driver, worker, and event logs.
  /// [maxNumberOfWorkers] Specifies the maximum number of worker nodes. It should be between 1 and 25000.
  /// [minNumberOfWorkers] Specifies the minimum number of worker nodes. It should be between 1 and 25000. It defaults to `1`.
  /// [nodeType] Node type for the new cluster.
  /// [sparkConfig] User-specified Spark configuration variables key-value pairs.
  /// [sparkEnvironmentVariables] User-specified Spark environment variables key-value pairs.
  LinkedServiceAzureDatabricksNewClusterConfig({
    required this.clusterVersion,
    this.customTags,
    this.driverNodeType,
    this.initScripts,
    this.logDestination,
    this.maxNumberOfWorkers,
    this.minNumberOfWorkers,
    required this.nodeType,
    this.sparkConfig,
    this.sparkEnvironmentVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterVersion': clusterVersion,
      'customTags': ?customTags,
      'driverNodeType': ?driverNodeType,
      'initScripts': ?initScripts,
      'logDestination': ?logDestination,
      'maxNumberOfWorkers': ?maxNumberOfWorkers,
      'minNumberOfWorkers': ?minNumberOfWorkers,
      'nodeType': nodeType,
      'sparkConfig': ?sparkConfig,
      'sparkEnvironmentVariables': ?sparkEnvironmentVariables,
    };
  }

  factory LinkedServiceAzureDatabricksNewClusterConfig.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureDatabricksNewClusterConfig(
      clusterVersion: map['clusterVersion'] as String,
      customTags: map['customTags'] == null ? null : (map['customTags'] as Map).cast<String, String>(),
      driverNodeType: map['driverNodeType'] == null ? null : map['driverNodeType'] as String,
      initScripts: map['initScripts'] == null ? null : (map['initScripts'] as List).cast<String>(),
      logDestination: map['logDestination'] == null ? null : map['logDestination'] as String,
      maxNumberOfWorkers: map['maxNumberOfWorkers'] == null ? null : map['maxNumberOfWorkers'] as int,
      minNumberOfWorkers: map['minNumberOfWorkers'] == null ? null : map['minNumberOfWorkers'] as int,
      nodeType: map['nodeType'] as String,
      sparkConfig: map['sparkConfig'] == null ? null : (map['sparkConfig'] as Map).cast<String, String>(),
      sparkEnvironmentVariables: map['sparkEnvironmentVariables'] == null ? null : (map['sparkEnvironmentVariables'] as Map).cast<String, String>(),
    );
  }
}

