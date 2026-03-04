// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_list_dataproc_v1beta2.dart';

/// A Dataproc job for running Apache Hive (https://hive.apache.org/) queries on YARN.
class HiveJobDataprocV1beta2 {
  /// Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  final pulumi.Input<bool>? continueOnFailure;

  /// Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs.
  final pulumi.Input<List<String>>? jarFileUris;

  /// Optional. A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and classes in user code.
  final pulumi.Input<Map<String, String>>? properties;

  /// The HCFS URI of the script that contains Hive queries.
  final pulumi.Input<String>? queryFileUri;

  /// A list of queries.
  final pulumi.Input<QueryListDataprocV1beta2>? queryList;

  /// Optional. Mapping of query variable names to values (equivalent to the Hive command: SET name="value";).
  final pulumi.Input<Map<String, String>>? scriptVariables;

  /// Creates a new [HiveJobDataprocV1beta2].
  /// [continueOnFailure] Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  /// [jarFileUris] Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs.
  /// [properties] Optional. A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and classes in user code.
  /// [queryFileUri] The HCFS URI of the script that contains Hive queries.
  /// [queryList] A list of queries.
  /// [scriptVariables] Optional. Mapping of query variable names to values (equivalent to the Hive command: SET name="value";).
  HiveJobDataprocV1beta2({
    this.continueOnFailure,
    this.jarFileUris,
    this.properties,
    this.queryFileUri,
    this.queryList,
    this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnFailure': ?continueOnFailure,
      'jarFileUris': ?jarFileUris,
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryList':
          ?pulumi.Input.mapOptionalInputValue<
            QueryListDataprocV1beta2,
            Map<String, dynamic>
          >(queryList, (value) => value.toMap()),
      'scriptVariables': ?scriptVariables,
    };
  }

  factory HiveJobDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return HiveJobDataprocV1beta2(
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
          QueryListDataprocV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
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
