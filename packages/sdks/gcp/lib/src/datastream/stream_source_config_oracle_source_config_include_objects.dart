// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_oracle_source_config_include_objects_oracle_schema.dart';

class StreamSourceConfigOracleSourceConfigIncludeObjects {
  /// Oracle schemas/databases in the database server
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema>> oracleSchemas;

  /// Creates a new [StreamSourceConfigOracleSourceConfigIncludeObjects].
  /// [oracleSchemas] Oracle schemas/databases in the database server
  StreamSourceConfigOracleSourceConfigIncludeObjects({
    required this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleSchemas': pulumi.Input.mapInputValue<List<StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema>, List<Map<String, dynamic>>>(oracleSchemas, (value) => pulumi.Input.encodeList<StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamSourceConfigOracleSourceConfigIncludeObjects.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigOracleSourceConfigIncludeObjects(
      oracleSchemas: (pulumi.Input.decodeList<StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema>(map['oracleSchemas'], (value) => StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

