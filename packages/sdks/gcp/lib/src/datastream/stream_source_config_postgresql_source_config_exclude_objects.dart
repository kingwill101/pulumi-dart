// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_postgresql_source_config_exclude_objects_postgresql_schema.dart';

class StreamSourceConfigPostgresqlSourceConfigExcludeObjects {
  /// PostgreSQL schemas on the server
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema>> postgresqlSchemas;

  /// Creates a new [StreamSourceConfigPostgresqlSourceConfigExcludeObjects].
  /// [postgresqlSchemas] PostgreSQL schemas on the server
  const StreamSourceConfigPostgresqlSourceConfigExcludeObjects({
    required this.postgresqlSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlSchemas': pulumi.Input.mapInputValue<List<StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema>, List<Map<String, dynamic>>>(postgresqlSchemas, (value) => pulumi.Input.encodeList<StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamSourceConfigPostgresqlSourceConfigExcludeObjects.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigPostgresqlSourceConfigExcludeObjects(
      postgresqlSchemas: pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema>(map['postgresqlSchemas']!, (value) => StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
