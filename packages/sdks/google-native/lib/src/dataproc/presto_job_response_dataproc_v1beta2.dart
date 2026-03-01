// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config_response_dataproc_v1beta2.dart';
import 'query_list_response_dataproc_v1beta2.dart';

/// A Dataproc job for running Presto (https://prestosql.io/) queries. IMPORTANT: The Dataproc Presto Optional Component (https://cloud.google.com/dataproc/docs/concepts/components/presto) must be enabled when the cluster is created to submit a Presto job to the cluster.
class PrestoJobResponseDataprocV1beta2 {
  /// Optional. Presto client tags to attach to this query
  final List<String> clientTags;
  /// Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  final bool continueOnFailure;
  /// Optional. The runtime log config for job execution.
  final LoggingConfigResponseDataprocV1beta2 loggingConfig;
  /// Optional. The format in which query output will be displayed. See the Presto documentation for supported output formats
  final String outputFormat;
  /// Optional. A mapping of property names to values. Used to set Presto session properties (https://prestodb.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Presto CLI
  final Map<String, String> properties;
  /// The HCFS URI of the script that contains SQL queries.
  final String queryFileUri;
  /// A list of queries.
  final QueryListResponseDataprocV1beta2 queryList;

  /// Creates a new [PrestoJobResponseDataprocV1beta2].
  /// [clientTags] Optional. Presto client tags to attach to this query
  /// [continueOnFailure] Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [outputFormat] Optional. The format in which query output will be displayed. See the Presto documentation for supported output formats
  /// [properties] Optional. A mapping of property names to values. Used to set Presto session properties (https://prestodb.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Presto CLI
  /// [queryFileUri] The HCFS URI of the script that contains SQL queries.
  /// [queryList] A list of queries.
  PrestoJobResponseDataprocV1beta2({
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
      'loggingConfig': loggingConfig.toMap(),
      'outputFormat': outputFormat,
      'properties': properties,
      'queryFileUri': queryFileUri,
      'queryList': queryList.toMap(),
    };
  }

  factory PrestoJobResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return PrestoJobResponseDataprocV1beta2(
      clientTags: (map['clientTags'] as List).cast<String>(),
      continueOnFailure: map['continueOnFailure'] as bool,
      loggingConfig: LoggingConfigResponseDataprocV1beta2.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
      outputFormat: map['outputFormat'] as String,
      properties: (map['properties'] as Map).cast<String, String>(),
      queryFileUri: map['queryFileUri'] as String,
      queryList: QueryListResponseDataprocV1beta2.fromMap((map['queryList'] as Map).cast<String, dynamic>()),
    );
  }
}

