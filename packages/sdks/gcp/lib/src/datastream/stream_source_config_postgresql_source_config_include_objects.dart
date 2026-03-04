// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_postgresql_source_config_include_objects_postgresql_schema.dart';

class StreamSourceConfigPostgresqlSourceConfigIncludeObjects {
  /// PostgreSQL schemas on the server
  /// Structure is documented below.
  final pulumi.Input<
    List<StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema>
  >
  postgresqlSchemas;

  /// Creates a new [StreamSourceConfigPostgresqlSourceConfigIncludeObjects].
  /// [postgresqlSchemas] PostgreSQL schemas on the server
  StreamSourceConfigPostgresqlSourceConfigIncludeObjects({
    required this.postgresqlSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlSchemas':
          pulumi.Input.mapInputValue<
            List<
              StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema
            >,
            List<Map<String, dynamic>>
          >(
            postgresqlSchemas,
            (value) =>
                pulumi.Input.encodeList<
                  StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory StreamSourceConfigPostgresqlSourceConfigIncludeObjects.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigPostgresqlSourceConfigIncludeObjects(
      postgresqlSchemas: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema
        >(
          map['postgresqlSchemas']!,
          (value) =>
              StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
