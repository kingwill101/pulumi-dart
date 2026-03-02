// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseLogsinkOpensearch resources.
class DatabaseLogsinkOpensearchState {
  /// CA certificate for TLS verification in PEM format. Can be specified using `file()` function. This field is marked as sensitive.
  final pulumi.Input<String>? caCert;
  /// UUID of the source database cluster that will forward logs.
  final pulumi.Input<String>? clusterId;
  /// HTTPS URL to the OpenSearch or Elasticsearch cluster (e.g., `https://host:port`). **Note**: Only HTTPS URLs are supported.
  final pulumi.Input<String>? endpoint;
  /// Maximum number of days to retain indices. Must be 1 or greater.
  final pulumi.Input<int>? indexDaysMax;
  /// Prefix for the indices where logs will be stored.
  final pulumi.Input<String>? indexPrefix;
  /// The unique identifier for the logsink as returned by the DigitalOcean API.
  final pulumi.Input<String>? logsinkId;
  /// Display name for the logsink. **Note**: This is immutable; changing it will force recreation of the resource.
  final pulumi.Input<String>? name;
  /// Request timeout for log deliveries in seconds. Must be 1 or greater.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [DatabaseLogsinkOpensearchState].
  /// [caCert] CA certificate for TLS verification in PEM format. Can be specified using `file()` function. This field is marked as sensitive.
  /// [clusterId] UUID of the source database cluster that will forward logs.
  /// [endpoint] HTTPS URL to the OpenSearch or Elasticsearch cluster (e.g., `https://host:port`). **Note**: Only HTTPS URLs are supported.
  /// [indexDaysMax] Maximum number of days to retain indices. Must be 1 or greater.
  /// [indexPrefix] Prefix for the indices where logs will be stored.
  /// [logsinkId] The unique identifier for the logsink as returned by the DigitalOcean API.
  /// [name] Display name for the logsink. **Note**: This is immutable; changing it will force recreation of the resource.
  /// [timeoutSeconds] Request timeout for log deliveries in seconds. Must be 1 or greater.
  DatabaseLogsinkOpensearchState({
    this.caCert,
    this.clusterId,
    this.endpoint,
    this.indexDaysMax,
    this.indexPrefix,
    this.logsinkId,
    this.name,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCert': ?caCert,
      'clusterId': ?clusterId,
      'endpoint': ?endpoint,
      'indexDaysMax': ?indexDaysMax,
      'indexPrefix': ?indexPrefix,
      'logsinkId': ?logsinkId,
      'name': ?name,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory DatabaseLogsinkOpensearchState.fromMap(Map<String, dynamic> map) {
    return DatabaseLogsinkOpensearchState(
      caCert: map['caCert'] == null ? null : (map['caCert']! as String).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      indexDaysMax: map['indexDaysMax'] == null ? null : (map['indexDaysMax']! as int).input(),
      indexPrefix: map['indexPrefix'] == null ? null : (map['indexPrefix']! as String).input(),
      logsinkId: map['logsinkId'] == null ? null : (map['logsinkId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds']! as int).input(),
    );
  }
}

