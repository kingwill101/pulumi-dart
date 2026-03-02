// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config_dataproc_v1beta2.dart';
import 'query_list_dataproc_v1beta2.dart';

/// A Dataproc job for running Presto (https://prestosql.io/) queries. IMPORTANT: The Dataproc Presto Optional Component (https://cloud.google.com/dataproc/docs/concepts/components/presto) must be enabled when the cluster is created to submit a Presto job to the cluster.
class PrestoJobDataprocV1beta2 {
  /// Optional. Presto client tags to attach to this query
  final pulumi.Input<List<String>>? clientTags;
  /// Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  final pulumi.Input<bool>? continueOnFailure;
  /// Optional. The runtime log config for job execution.
  final pulumi.Input<LoggingConfigDataprocV1beta2>? loggingConfig;
  /// Optional. The format in which query output will be displayed. See the Presto documentation for supported output formats
  final pulumi.Input<String>? outputFormat;
  /// Optional. A mapping of property names to values. Used to set Presto session properties (https://prestodb.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Presto CLI
  final pulumi.Input<Map<String, String>>? properties;
  /// The HCFS URI of the script that contains SQL queries.
  final pulumi.Input<String>? queryFileUri;
  /// A list of queries.
  final pulumi.Input<QueryListDataprocV1beta2>? queryList;

  /// Creates a new [PrestoJobDataprocV1beta2].
  /// [clientTags] Optional. Presto client tags to attach to this query
  /// [continueOnFailure] Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [outputFormat] Optional. The format in which query output will be displayed. See the Presto documentation for supported output formats
  /// [properties] Optional. A mapping of property names to values. Used to set Presto session properties (https://prestodb.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Presto CLI
  /// [queryFileUri] The HCFS URI of the script that contains SQL queries.
  /// [queryList] A list of queries.
  PrestoJobDataprocV1beta2({
    this.clientTags,
    this.continueOnFailure,
    this.loggingConfig,
    this.outputFormat,
    this.properties,
    this.queryFileUri,
    this.queryList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientTags': ?clientTags,
      'continueOnFailure': ?continueOnFailure,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<LoggingConfigDataprocV1beta2, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'outputFormat': ?outputFormat,
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryList': ?pulumi.Input.mapOptionalInputValue<QueryListDataprocV1beta2, Map<String, dynamic>>(queryList, (value) => value.toMap()),
    };
  }

  factory PrestoJobDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return PrestoJobDataprocV1beta2(
      clientTags: map['clientTags'] == null ? null : ((map['clientTags'] as List).cast<String>()).input(),
      continueOnFailure: map['continueOnFailure'] == null ? null : (map['continueOnFailure'] as bool).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (LoggingConfigDataprocV1beta2.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())).input(),
      outputFormat: map['outputFormat'] == null ? null : (map['outputFormat'] as String).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      queryFileUri: map['queryFileUri'] == null ? null : (map['queryFileUri'] as String).input(),
      queryList: map['queryList'] == null ? null : (QueryListDataprocV1beta2.fromMap((map['queryList'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

