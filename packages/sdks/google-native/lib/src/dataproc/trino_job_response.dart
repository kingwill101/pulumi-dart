// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config_response.dart';
import 'query_list_response.dart';

/// A Dataproc job for running Trino (https://trino.io/) queries. IMPORTANT: The Dataproc Trino Optional Component (https://cloud.google.com/dataproc/docs/concepts/components/trino) must be enabled when the cluster is created to submit a Trino job to the cluster.
class TrinoJobResponse {
  /// Optional. Trino client tags to attach to this query
  final pulumi.Input<List<String>> clientTags;

  /// Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  final pulumi.Input<bool> continueOnFailure;

  /// Optional. The runtime log config for job execution.
  final pulumi.Input<LoggingConfigResponse> loggingConfig;

  /// Optional. The format in which query output will be displayed. See the Trino documentation for supported output formats
  final pulumi.Input<String> outputFormat;

  /// Optional. A mapping of property names to values. Used to set Trino session properties (https://trino.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Trino CLI
  final pulumi.Input<Map<String, String>> properties;

  /// The HCFS URI of the script that contains SQL queries.
  final pulumi.Input<String> queryFileUri;

  /// A list of queries.
  final pulumi.Input<QueryListResponse> queryList;

  /// Creates a new [TrinoJobResponse].
  /// [clientTags] Optional. Trino client tags to attach to this query
  /// [continueOnFailure] Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [outputFormat] Optional. The format in which query output will be displayed. See the Trino documentation for supported output formats
  /// [properties] Optional. A mapping of property names to values. Used to set Trino session properties (https://trino.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Trino CLI
  /// [queryFileUri] The HCFS URI of the script that contains SQL queries.
  /// [queryList] A list of queries.
  TrinoJobResponse({
    required this.clientTags,
    required this.continueOnFailure,
    required this.loggingConfig,
    required this.outputFormat,
    required this.properties,
    required this.queryFileUri,
    required this.queryList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientTags': clientTags,
      'continueOnFailure': continueOnFailure,
      'loggingConfig':
          pulumi.Input.mapInputValue<
            LoggingConfigResponse,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
      'outputFormat': outputFormat,
      'properties': properties,
      'queryFileUri': queryFileUri,
      'queryList':
          pulumi.Input.mapInputValue<QueryListResponse, Map<String, dynamic>>(
            queryList,
            (value) => value.toMap(),
          ),
    };
  }

  factory TrinoJobResponse.fromMap(Map<String, dynamic> map) {
    return TrinoJobResponse(
      clientTags: pulumi.Input.fromValue(
        (map['clientTags'] as List).cast<String>(),
      ),
      continueOnFailure: pulumi.Input.fromValue(
        map['continueOnFailure'] as bool,
      ),
      loggingConfig: pulumi.Input.fromValue(
        LoggingConfigResponse.fromMap(
          (map['loggingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      outputFormat: pulumi.Input.fromValue(map['outputFormat'] as String),
      properties: pulumi.Input.fromValue(
        (map['properties'] as Map).cast<String, String>(),
      ),
      queryFileUri: pulumi.Input.fromValue(map['queryFileUri'] as String),
      queryList: pulumi.Input.fromValue(
        QueryListResponse.fromMap(
          (map['queryList']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
