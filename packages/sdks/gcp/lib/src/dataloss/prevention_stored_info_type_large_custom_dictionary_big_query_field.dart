// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_stored_info_type_large_custom_dictionary_big_query_field_field.dart';
import 'prevention_stored_info_type_large_custom_dictionary_big_query_field_table.dart';

class PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField {
  /// Designated field in the BigQuery table.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField
  >
  field;

  /// Field in a BigQuery table where each cell represents a dictionary phrase.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable
  >
  table;

  /// Creates a new [PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField].
  /// [field] Designated field in the BigQuery table.
  /// [table] Field in a BigQuery table where each cell represents a dictionary phrase.
  PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField({
    required this.field,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field':
          pulumi.Input.mapInputValue<
            PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField,
            Map<String, dynamic>
          >(field, (value) => value.toMap()),
      'table':
          pulumi.Input.mapInputValue<
            PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable,
            Map<String, dynamic>
          >(table, (value) => value.toMap()),
    };
  }

  factory PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField(
      field: pulumi.Input.fromValue(
        PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField.fromMap(
          (map['field']! as Map).cast<String, dynamic>(),
        ),
      ),
      table: pulumi.Input.fromValue(
        PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable.fromMap(
          (map['table']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
