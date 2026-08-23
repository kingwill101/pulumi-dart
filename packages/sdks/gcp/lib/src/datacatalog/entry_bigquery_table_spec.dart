// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_bigquery_table_spec_table_spec.dart';
import 'entry_bigquery_table_spec_view_spec.dart';

class EntryBigqueryTableSpec {
  /// (Output)
  /// The table source type.
  final pulumi.Input<String>? tableSourceType;
  /// (Output)
  /// Spec of a BigQuery table. This field should only be populated if tableSourceType is BIGQUERY_TABLE.
  /// Structure is documented below.
  final pulumi.Input<List<EntryBigqueryTableSpecTableSpec>>? tableSpecs;
  /// (Output)
  /// Table view specification. This field should only be populated if tableSourceType is BIGQUERY_VIEW.
  /// Structure is documented below.
  final pulumi.Input<List<EntryBigqueryTableSpecViewSpec>>? viewSpecs;

  /// Creates a new [EntryBigqueryTableSpec].
  /// [tableSourceType] (Output)
  /// [tableSpecs] (Output)
  /// [viewSpecs] (Output)
  const EntryBigqueryTableSpec({
    this.tableSourceType,
    this.tableSpecs,
    this.viewSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableSourceType': ?tableSourceType,
      'tableSpecs': ?pulumi.Input.mapOptionalInputValue<List<EntryBigqueryTableSpecTableSpec>, List<Map<String, dynamic>>>(tableSpecs, (value) => pulumi.Input.encodeList<EntryBigqueryTableSpecTableSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'viewSpecs': ?pulumi.Input.mapOptionalInputValue<List<EntryBigqueryTableSpecViewSpec>, List<Map<String, dynamic>>>(viewSpecs, (value) => pulumi.Input.encodeList<EntryBigqueryTableSpecViewSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EntryBigqueryTableSpec.fromMap(Map<String, dynamic> map) {
    return EntryBigqueryTableSpec(
      tableSourceType: (() { final guardedValue = map['tableSourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableSpecs: (() { final guardedValue = map['tableSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EntryBigqueryTableSpecTableSpec>(guardedValue, (value) => EntryBigqueryTableSpecTableSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      viewSpecs: (() { final guardedValue = map['viewSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EntryBigqueryTableSpecViewSpec>(guardedValue, (value) => EntryBigqueryTableSpecViewSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
