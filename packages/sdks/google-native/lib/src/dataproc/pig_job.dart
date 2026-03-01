// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config.dart';
import 'query_list.dart';

/// A Dataproc job for running Apache Pig (https://pig.apache.org/) queries on YARN.
class PigJob {
  /// Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  final bool? continueOnFailure;
  /// Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  final List<String>? jarFileUris;
  /// Optional. The runtime log config for job execution.
  final LoggingConfig? loggingConfig;
  /// Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code.
  final Map<String, String>? properties;
  /// The HCFS URI of the script that contains the Pig queries.
  final String? queryFileUri;
  /// A list of queries.
  final QueryList? queryList;
  /// Optional. Mapping of query variable names to values (equivalent to the Pig command: name=[value]).
  final Map<String, String>? scriptVariables;

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
      'loggingConfig': ?loggingConfig == null ? null : loggingConfig!.toMap(),
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryList': ?queryList == null ? null : queryList!.toMap(),
      'scriptVariables': ?scriptVariables,
    };
  }

  factory PigJob.fromMap(Map<String, dynamic> map) {
    return PigJob(
      continueOnFailure: map['continueOnFailure'] == null ? null : map['continueOnFailure'] as bool,
      jarFileUris: map['jarFileUris'] == null ? null : (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: map['loggingConfig'] == null ? null : LoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      queryFileUri: map['queryFileUri'] == null ? null : map['queryFileUri'] as String,
      queryList: map['queryList'] == null ? null : QueryList.fromMap((map['queryList'] as Map).cast<String, dynamic>()),
      scriptVariables: map['scriptVariables'] == null ? null : (map['scriptVariables'] as Map).cast<String, String>(),
    );
  }
}

