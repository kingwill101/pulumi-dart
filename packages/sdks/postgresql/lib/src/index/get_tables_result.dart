// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tables_table.dart';

/// Result data returned by getTables.
class GetTablesResult {
  final String database;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String>? likeAllPatterns;
  final List<String>? likeAnyPatterns;
  final List<String>? notLikeAllPatterns;
  final String? regexPattern;
  final List<String>? schemas;
  final List<String>? tableTypes;
  /// A list of PostgreSQL tables retrieved by this data source. Each table consists of the fields documented below.
  /// ___
  final List<GetTablesTable> tables;

  /// Creates a new [GetTablesResult].
  /// [database] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [likeAllPatterns] Optional.
  /// [likeAnyPatterns] Optional.
  /// [notLikeAllPatterns] Optional.
  /// [regexPattern] Optional.
  /// [schemas] Optional.
  /// [tableTypes] Optional.
  /// [tables] A list of PostgreSQL tables retrieved by this data source. Each table consists of the fields documented below.
  const GetTablesResult({
    required this.database,
    required this.id,
    this.likeAllPatterns,
    this.likeAnyPatterns,
    this.notLikeAllPatterns,
    this.regexPattern,
    this.schemas,
    this.tableTypes,
    required this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'id': id,
      'likeAllPatterns': ?likeAllPatterns,
      'likeAnyPatterns': ?likeAnyPatterns,
      'notLikeAllPatterns': ?notLikeAllPatterns,
      'regexPattern': ?regexPattern,
      'schemas': ?schemas,
      'tableTypes': ?tableTypes,
      'tables': pulumi.Input.encodeList<GetTablesTable, Map<String, dynamic>>(tables, (value) => value.toMap()),
    };
  }

  factory GetTablesResult.fromMap(Map<String, dynamic> map) {
    return GetTablesResult(
      database: map['database'] as String,
      id: map['id'] as String,
      likeAllPatterns: (() { final guardedValue = map['likeAllPatterns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      likeAnyPatterns: (() { final guardedValue = map['likeAnyPatterns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      notLikeAllPatterns: (() { final guardedValue = map['notLikeAllPatterns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      regexPattern: (() { final guardedValue = map['regexPattern']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemas: (() { final guardedValue = map['schemas']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tableTypes: (() { final guardedValue = map['tableTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tables: pulumi.Input.decodeList<GetTablesTable>(map['tables']!, (value) => GetTablesTable.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

