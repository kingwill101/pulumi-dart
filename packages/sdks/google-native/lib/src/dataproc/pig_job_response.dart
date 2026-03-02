// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config_response.dart';
import 'query_list_response.dart';

/// A Dataproc job for running Apache Pig (https://pig.apache.org/) queries on YARN.
class PigJobResponse {
  /// Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  final pulumi.Input<bool> continueOnFailure;
  /// Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  final pulumi.Input<List<String>> jarFileUris;
  /// Optional. The runtime log config for job execution.
  final pulumi.Input<LoggingConfigResponse> loggingConfig;
  /// Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code.
  final pulumi.Input<Map<String, String>> properties;
  /// The HCFS URI of the script that contains the Pig queries.
  final pulumi.Input<String> queryFileUri;
  /// A list of queries.
  final pulumi.Input<QueryListResponse> queryList;
  /// Optional. Mapping of query variable names to values (equivalent to the Pig command: name=[value]).
  final pulumi.Input<Map<String, String>> scriptVariables;

  /// Creates a new [PigJobResponse].
  /// [continueOnFailure] Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  /// [jarFileUris] Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [properties] Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code.
  /// [queryFileUri] The HCFS URI of the script that contains the Pig queries.
  /// [queryList] A list of queries.
  /// [scriptVariables] Optional. Mapping of query variable names to values (equivalent to the Pig command: name=[value]).
  PigJobResponse({
    required this.continueOnFailure,
    required this.jarFileUris,
    required this.loggingConfig,
    required this.properties,
    required this.queryFileUri,
    required this.queryList,
    required this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnFailure': continueOnFailure,
      'jarFileUris': jarFileUris,
      'loggingConfig': pulumi.Input.mapInputValue<LoggingConfigResponse, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'properties': properties,
      'queryFileUri': queryFileUri,
      'queryList': pulumi.Input.mapInputValue<QueryListResponse, Map<String, dynamic>>(queryList, (value) => value.toMap()),
      'scriptVariables': scriptVariables,
    };
  }

  factory PigJobResponse.fromMap(Map<String, dynamic> map) {
    return PigJobResponse(
      continueOnFailure: (map['continueOnFailure'] as bool).input(),
      jarFileUris: ((map['jarFileUris'] as List).cast<String>()).input(),
      loggingConfig: (LoggingConfigResponse.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())).input(),
      properties: ((map['properties'] as Map).cast<String, String>()).input(),
      queryFileUri: (map['queryFileUri'] as String).input(),
      queryList: (QueryListResponse.fromMap((map['queryList'] as Map).cast<String, dynamic>())).input(),
      scriptVariables: ((map['scriptVariables'] as Map).cast<String, String>()).input(),
    );
  }
}

