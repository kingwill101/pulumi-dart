// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_mysql_excluded_objects_mysql_database.dart';

class StreamBackfillAllMysqlExcludedObjects {
  /// MySQL databases on the server
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllMysqlExcludedObjectsMysqlDatabase>> mysqlDatabases;

  /// Creates a new [StreamBackfillAllMysqlExcludedObjects].
  /// [mysqlDatabases] MySQL databases on the server
  const StreamBackfillAllMysqlExcludedObjects({
    required this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlDatabases': pulumi.Input.mapInputValue<List<StreamBackfillAllMysqlExcludedObjectsMysqlDatabase>, List<Map<String, dynamic>>>(mysqlDatabases, (value) => pulumi.Input.encodeList<StreamBackfillAllMysqlExcludedObjectsMysqlDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamBackfillAllMysqlExcludedObjects.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllMysqlExcludedObjects(
      mysqlDatabases: pulumi.Input.fromValue(pulumi.Input.decodeList<StreamBackfillAllMysqlExcludedObjectsMysqlDatabase>(map['mysqlDatabases']!, (value) => StreamBackfillAllMysqlExcludedObjectsMysqlDatabase.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
