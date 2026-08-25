// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gdc_spark_application_spark_sql_application_config_query_list.dart';

class GdcSparkApplicationSparkSqlApplicationConfig {
  /// HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final pulumi.Input<List<String>?>? jarFileUris;
  /// The HCFS URI of the script that contains SQL queries.
  final pulumi.Input<String?>? queryFileUri;
  /// Represents a list of queries.
  /// Structure is documented below.
  final pulumi.Input<GdcSparkApplicationSparkSqlApplicationConfigQueryList?>? queryList;
  /// Mapping of query variable names to values (equivalent to the Spark SQL command: SET `name="value";`).
  final pulumi.Input<Map<String, String>?>? scriptVariables;

  /// Creates a new [GdcSparkApplicationSparkSqlApplicationConfig].
  /// [jarFileUris] HCFS URIs of jar files to be added to the Spark CLASSPATH.
  /// [queryFileUri] The HCFS URI of the script that contains SQL queries.
  /// [queryList] Represents a list of queries.
  /// [scriptVariables] Mapping of query variable names to values (equivalent to the Spark SQL command: SET `name="value";`).
  const GdcSparkApplicationSparkSqlApplicationConfig({
    this.jarFileUris,
    this.queryFileUri,
    this.queryList,
    this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jarFileUris': ?jarFileUris,
      'queryFileUri': ?queryFileUri,
      'queryList': ?pulumi.Input.mapOptionalInputValue<GdcSparkApplicationSparkSqlApplicationConfigQueryList, Map<String, dynamic>>(queryList, (value) => value.toMap()),
      'scriptVariables': ?scriptVariables,
    };
  }

  factory GdcSparkApplicationSparkSqlApplicationConfig.fromMap(Map<String, dynamic> map) {
    return GdcSparkApplicationSparkSqlApplicationConfig(
      jarFileUris: (() { final guardedValue = map['jarFileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      queryFileUri: (() { final guardedValue = map['queryFileUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryList: (() { final guardedValue = map['queryList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GdcSparkApplicationSparkSqlApplicationConfigQueryList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scriptVariables: (() { final guardedValue = map['scriptVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
