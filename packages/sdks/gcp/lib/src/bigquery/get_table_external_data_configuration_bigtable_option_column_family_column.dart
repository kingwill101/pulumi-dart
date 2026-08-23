// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableExternalDataConfigurationBigtableOptionColumnFamilyColumn {
  /// The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. 'encoding' can also be set at the column family level. However, the setting at this level takes precedence if 'encoding' is set at both levels.
  final pulumi.Input<String> encoding;
  /// If the qualifier is not a valid BigQuery field identifier i.e. does not match [a-zA-Z][a-zA-Z0-9_]*, a valid identifier must be provided as the column field name and is used as field name in queries.
  final pulumi.Input<String> fieldName;
  /// If this is set, only the latest version of value in this column are exposed. 'onlyReadLatest' can also be set at the column family level. However, the setting at this level takes precedence if 'onlyReadLatest' is set at both levels.
  final pulumi.Input<bool> onlyReadLatest;
  /// Qualifier of the column. Columns in the parent column family that has this exact qualifier are exposed as . field. If the qualifier is valid UTF-8 string, it can be specified in the qualifierString field. Otherwise, a base-64 encoded value must be set to qualifierEncoded. The column field name is the same as the column qualifier. However, if the qualifier is not a valid BigQuery field identifier i.e. does not match [a-zA-Z][a-zA-Z0-9_]*, a valid identifier must be provided as fieldName.
  final pulumi.Input<String> qualifierEncoded;
  /// Qualifier string.
  final pulumi.Input<String> qualifierString;
  /// The type to convert the value in cells of this column. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive): "BYTES", "STRING", "INTEGER", "FLOAT", "BOOLEAN", "JSON", Default type is "BYTES". 'type' can also be set at the column family level. However, the setting at this level takes precedence if 'type' is set at both levels.
  final pulumi.Input<String> type;

  /// Creates a new [GetTableExternalDataConfigurationBigtableOptionColumnFamilyColumn].
  /// [encoding] The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. 'encoding' can also be set at the column family level. However, the setting at this level takes precedence if 'encoding' is set at both levels.
  /// [fieldName] If the qualifier is not a valid BigQuery field identifier i.e. does not match [a-zA-Z][a-zA-Z0-9_]*, a valid identifier must be provided as the column field name and is used as field name in queries.
  /// [onlyReadLatest] If this is set, only the latest version of value in this column are exposed. 'onlyReadLatest' can also be set at the column family level. However, the setting at this level takes precedence if 'onlyReadLatest' is set at both levels.
  /// [qualifierEncoded] Qualifier of the column. Columns in the parent column family that has this exact qualifier are exposed as . field. If the qualifier is valid UTF-8 string, it can be specified in the qualifierString field. Otherwise, a base-64 encoded value must be set to qualifierEncoded. The column field name is the same as the column qualifier. However, if the qualifier is not a valid BigQuery field identifier i.e. does not match [a-zA-Z][a-zA-Z0-9_]*, a valid identifier must be provided as fieldName.
  /// [qualifierString] Qualifier string.
  /// [type] The type to convert the value in cells of this column. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive): "BYTES", "STRING", "INTEGER", "FLOAT", "BOOLEAN", "JSON", Default type is "BYTES". 'type' can also be set at the column family level. However, the setting at this level takes precedence if 'type' is set at both levels.
  const GetTableExternalDataConfigurationBigtableOptionColumnFamilyColumn({
    required this.encoding,
    required this.fieldName,
    required this.onlyReadLatest,
    required this.qualifierEncoded,
    required this.qualifierString,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': encoding,
      'fieldName': fieldName,
      'onlyReadLatest': onlyReadLatest,
      'qualifierEncoded': qualifierEncoded,
      'qualifierString': qualifierString,
      'type': type,
    };
  }

  factory GetTableExternalDataConfigurationBigtableOptionColumnFamilyColumn.fromMap(Map<String, dynamic> map) {
    return GetTableExternalDataConfigurationBigtableOptionColumnFamilyColumn(
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
      fieldName: pulumi.Input.fromValue(map['fieldName'] as String),
      onlyReadLatest: pulumi.Input.fromValue(map['onlyReadLatest'] as bool),
      qualifierEncoded: pulumi.Input.fromValue(map['qualifierEncoded'] as String),
      qualifierString: pulumi.Input.fromValue(map['qualifierString'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
