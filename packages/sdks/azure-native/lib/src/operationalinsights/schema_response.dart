// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_response.dart';

/// Table's schema.
class SchemaResponse {
  /// Table category.
  final List<String> categories;
  /// A list of table custom columns.
  final List<ColumnResponse>? columns;
  /// Table description.
  final String? description;
  /// Table display name.
  final String? displayName;
  /// Table labels.
  final List<String> labels;
  /// Table name.
  final String? name;
  /// List of solutions the table is affiliated with
  final List<String> solutions;
  /// Table's creator.
  final String source;
  /// A list of table standard columns.
  final List<ColumnResponse> standardColumns;
  /// The subtype describes what APIs can be used to interact with the table, and what features are available against it.
  final String tableSubType;
  /// Table's creator.
  final String tableType;

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
      'columns': ?columns == null ? null : pulumi.Input.encodeList<ColumnResponse, Map<String, dynamic>>(columns!, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'labels': labels,
      'name': ?name,
      'solutions': solutions,
      'source': source,
      'standardColumns': pulumi.Input.encodeList<ColumnResponse, Map<String, dynamic>>(standardColumns, (value) => value.toMap()),
      'tableSubType': tableSubType,
      'tableType': tableType,
    };
  }

  factory SchemaResponse.fromMap(Map<String, dynamic> map) {
    return SchemaResponse(
      categories: (map['categories'] as List).cast<String>(),
      columns: map['columns'] == null ? null : pulumi.Input.decodeList<ColumnResponse>(map['columns'], (value) => ColumnResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      labels: (map['labels'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      solutions: (map['solutions'] as List).cast<String>(),
      source: map['source'] as String,
      standardColumns: pulumi.Input.decodeList<ColumnResponse>(map['standardColumns'], (value) => ColumnResponse.fromMap((value as Map).cast<String, dynamic>())),
      tableSubType: map['tableSubType'] as String,
      tableType: map['tableType'] as String,
    );
  }
}

