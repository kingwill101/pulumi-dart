// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config.dart';
import 'query_list.dart';

/// A Dataproc job for running Apache Pig (https://pig.apache.org/) queries on YARN.
class PigJob {
  /// Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  final pulumi.Input<bool>? continueOnFailure;

  /// Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  final pulumi.Input<List<String>>? jarFileUris;

  /// Optional. The runtime log config for job execution.
  final pulumi.Input<LoggingConfig>? loggingConfig;

  /// Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code.
  final pulumi.Input<Map<String, String>>? properties;

  /// The HCFS URI of the script that contains the Pig queries.
  final pulumi.Input<String>? queryFileUri;

  /// A list of queries.
  final pulumi.Input<QueryList>? queryList;

  /// Optional. Mapping of query variable names to values (equivalent to the Pig command: name=[value]).
  final pulumi.Input<Map<String, String>>? scriptVariables;

  /// Creates a new [PigJob].
  /// [continueOnFailure] Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  /// [jarFileUris] Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [properties] Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code.
  /// [queryFileUri] The HCFS URI of the script that contains the Pig queries.
  /// [queryList] A list of queries.
  /// [scriptVariables] Optional. Mapping of query variable names to values (equivalent to the Pig command: name=[value]).
  PigJob({
    this.continueOnFailure,
    this.jarFileUris,
    this.loggingConfig,
    this.properties,
    this.queryFileUri,
    this.queryList,
    this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnFailure': ?continueOnFailure,
      'jarFileUris': ?jarFileUris,
      'loggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            LoggingConfig,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryList':
          ?pulumi.Input.mapOptionalInputValue<QueryList, Map<String, dynamic>>(
            queryList,
            (value) => value.toMap(),
          ),
      'scriptVariables': ?scriptVariables,
    };
  }

  factory PigJob.fromMap(Map<String, dynamic> map) {
    return PigJob(
      continueOnFailure: (() {
        final guardedValue = map['continueOnFailure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      jarFileUris: (() {
        final guardedValue = map['jarFileUris'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      loggingConfig: (() {
        final guardedValue = map['loggingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
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
      scriptVariables: (() {
        final guardedValue = map['scriptVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
