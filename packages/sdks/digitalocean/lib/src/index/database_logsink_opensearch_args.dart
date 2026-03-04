// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_logsink_opensearch_database_logsink_opensearch_args_doc}
/// The set of arguments for DatabaseLogsinkOpensearch.
/// {@endtemplate}
/// {@macro pulumi_index_database_logsink_opensearch_database_logsink_opensearch_args_doc}
class DatabaseLogsinkOpensearchArgs {
  /// CA certificate for TLS verification in PEM format. Can be specified using `file()` function. This field is marked as sensitive.
  final pulumi.Input<String>? caCert;

  /// UUID of the source database cluster that will forward logs.
  final pulumi.Input<String> clusterId;

  /// HTTPS URL to the OpenSearch or Elasticsearch cluster (e.g., `https://host:port`). **Note**: Only HTTPS URLs are supported.
  final pulumi.Input<String> endpoint;

  /// Maximum number of days to retain indices. Must be 1 or greater.
  final pulumi.Input<int>? indexDaysMax;

  /// Prefix for the indices where logs will be stored.
  final pulumi.Input<String> indexPrefix;

  /// Display name for the logsink. **Note**: This is immutable; changing it will force recreation of the resource.
  final pulumi.Input<String>? name;

  /// Request timeout for log deliveries in seconds. Must be 1 or greater.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [DatabaseLogsinkOpensearchArgs].
  /// [caCert] CA certificate for TLS verification in PEM format. Can be specified using `file()` function. This field is marked as sensitive.
  /// [clusterId] UUID of the source database cluster that will forward logs.
  /// [endpoint] HTTPS URL to the OpenSearch or Elasticsearch cluster (e.g., `https://host:port`). **Note**: Only HTTPS URLs are supported.
  /// [indexDaysMax] Maximum number of days to retain indices. Must be 1 or greater.
  /// [indexPrefix] Prefix for the indices where logs will be stored.
  /// [name] Display name for the logsink. **Note**: This is immutable; changing it will force recreation of the resource.
  /// [timeoutSeconds] Request timeout for log deliveries in seconds. Must be 1 or greater.
  DatabaseLogsinkOpensearchArgs({
    this.caCert,
    required this.clusterId,
    required this.endpoint,
    this.indexDaysMax,
    required this.indexPrefix,
    this.name,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCert': ?caCert,
      'clusterId': clusterId,
      'endpoint': endpoint,
      'indexDaysMax': ?indexDaysMax,
      'indexPrefix': indexPrefix,
      'name': ?name,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory DatabaseLogsinkOpensearchArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseLogsinkOpensearchArgs(
      caCert: (() {
        final guardedValue = map['caCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      indexDaysMax: (() {
        final guardedValue = map['indexDaysMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      indexPrefix: pulumi.Input.fromValue(map['indexPrefix'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeoutSeconds: (() {
        final guardedValue = map['timeoutSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
