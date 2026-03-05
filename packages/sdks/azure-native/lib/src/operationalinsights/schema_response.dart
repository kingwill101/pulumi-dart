// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_response.dart';

/// Table's schema.
class SchemaResponse {
  /// Table category.
  final pulumi.Input<List<String>> categories;
  /// A list of table custom columns.
  final pulumi.Input<List<ColumnResponse>>? columns;
  /// Table description.
  final pulumi.Input<String>? description;
  /// Table display name.
  final pulumi.Input<String>? displayName;
  /// Table labels.
  final pulumi.Input<List<String>> labels;
  /// Table name.
  final pulumi.Input<String>? name;
  /// List of solutions the table is affiliated with
  final pulumi.Input<List<String>> solutions;
  /// Table's creator.
  final pulumi.Input<String> source;
  /// A list of table standard columns.
  final pulumi.Input<List<ColumnResponse>> standardColumns;
  /// The subtype describes what APIs can be used to interact with the table, and what features are available against it.
  final pulumi.Input<String> tableSubType;
  /// Table's creator.
  final pulumi.Input<String> tableType;

  /// Creates a new [SchemaResponse].
  /// [categories] Table category.
  /// [columns] A list of table custom columns.
  /// [description] Table description.
  /// [displayName] Table display name.
  /// [labels] Table labels.
  /// [name] Table name.
  /// [solutions] List of solutions the table is affiliated with
  /// [source] Table's creator.
  /// [standardColumns] A list of table standard columns.
  /// [tableSubType] The subtype describes what APIs can be used to interact with the table, and what features are available against it.
  /// [tableType] Table's creator.
  SchemaResponse({
    required this.categories,
    this.columns,
    this.description,
    this.displayName,
    required this.labels,
    this.name,
    required this.solutions,
    required this.source,
    required this.standardColumns,
    required this.tableSubType,
    required this.tableType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': categories,
      'columns': ?pulumi.Input.mapOptionalInputValue<List<ColumnResponse>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<ColumnResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'labels': labels,
      'name': ?name,
      'solutions': solutions,
      'source': source,
      'standardColumns': pulumi.Input.mapInputValue<List<ColumnResponse>, List<Map<String, dynamic>>>(standardColumns, (value) => pulumi.Input.encodeList<ColumnResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tableSubType': tableSubType,
      'tableType': tableType,
    };
  }

  factory SchemaResponse.fromMap(Map<String, dynamic> map) {
    return SchemaResponse(
      categories: pulumi.Input.fromValue((map['categories'] as List).cast<String>()),
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ColumnResponse>(guardedValue, (value) => ColumnResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: pulumi.Input.fromValue((map['labels'] as List).cast<String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      solutions: pulumi.Input.fromValue((map['solutions'] as List).cast<String>()),
      source: pulumi.Input.fromValue(map['source'] as String),
      standardColumns: pulumi.Input.fromValue(pulumi.Input.decodeList<ColumnResponse>(map['standardColumns']!, (value) => ColumnResponse.fromMap((value as Map).cast<String, dynamic>()))),
      tableSubType: pulumi.Input.fromValue(map['tableSubType'] as String),
      tableType: pulumi.Input.fromValue(map['tableType'] as String),
    );
  }
}

