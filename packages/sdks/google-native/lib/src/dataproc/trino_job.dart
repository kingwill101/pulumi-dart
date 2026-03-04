// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config.dart';
import 'query_list.dart';

/// A Dataproc job for running Trino (https://trino.io/) queries. IMPORTANT: The Dataproc Trino Optional Component (https://cloud.google.com/dataproc/docs/concepts/components/trino) must be enabled when the cluster is created to submit a Trino job to the cluster.
class TrinoJob {
  /// Optional. Trino client tags to attach to this query
  final pulumi.Input<List<String>>? clientTags;

  /// Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  final pulumi.Input<bool>? continueOnFailure;

  /// Optional. The runtime log config for job execution.
  final pulumi.Input<LoggingConfig>? loggingConfig;

  /// Optional. The format in which query output will be displayed. See the Trino documentation for supported output formats
  final pulumi.Input<String>? outputFormat;

  /// Optional. A mapping of property names to values. Used to set Trino session properties (https://trino.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Trino CLI
  final pulumi.Input<Map<String, String>>? properties;

  /// The HCFS URI of the script that contains SQL queries.
  final pulumi.Input<String>? queryFileUri;

  /// A list of queries.
  final pulumi.Input<QueryList>? queryList;

  /// Creates a new [TrinoJob].
  /// [clientTags] Optional. Trino client tags to attach to this query
  /// [continueOnFailure] Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [outputFormat] Optional. The format in which query output will be displayed. See the Trino documentation for supported output formats
  /// [properties] Optional. A mapping of property names to values. Used to set Trino session properties (https://trino.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Trino CLI
  /// [queryFileUri] The HCFS URI of the script that contains SQL queries.
  /// [queryList] A list of queries.
  TrinoJob({
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
      'loggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            LoggingConfig,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
      'outputFormat': ?outputFormat,
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryList':
          ?pulumi.Input.mapOptionalInputValue<QueryList, Map<String, dynamic>>(
            queryList,
            (value) => value.toMap(),
          ),
    };
  }

  factory TrinoJob.fromMap(Map<String, dynamic> map) {
    return TrinoJob(
      clientTags: (() {
        final guardedValue = map['clientTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      continueOnFailure: (() {
        final guardedValue = map['continueOnFailure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      loggingConfig: (() {
        final guardedValue = map['loggingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      outputFormat: (() {
        final guardedValue = map['outputFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      queryFileUri: (() {
        final guardedValue = map['queryFileUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queryList: (() {
        final guardedValue = map['queryList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          QueryList.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
