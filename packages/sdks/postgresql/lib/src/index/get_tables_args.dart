// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_tables_get_tables_args_doc}
/// Arguments for getTables.
/// {@endtemplate}
/// {@macro pulumi_index_get_tables_get_tables_args_doc}
class GetTablesArgs {
  /// The PostgreSQL database which will be queried for table names.
  final pulumi.Input<String> database;
  /// List of expressions which will be pattern matched against table names in the query using the PostgreSQL ``LIKE ALL`` operators.
  final pulumi.Input<List<String>>? likeAllPatterns;
  /// List of expressions which will be pattern matched against table names in the query using the PostgreSQL ``LIKE ANY`` operators.
  final pulumi.Input<List<String>>? likeAnyPatterns;
  /// List of expressions which will be pattern matched against table names in the query using the PostgreSQL ``NOT LIKE ALL`` operators.
  final pulumi.Input<List<String>>? notLikeAllPatterns;
  /// Expression which will be pattern matched against table names in the query using the PostgreSQL ``~`` (regular expression match) operator.
  ///
  /// Note that all optional arguments can be used in conjunction.
  final pulumi.Input<String>? regexPattern;
  /// List of PostgreSQL schema(s) which will be queried for table names. Queries all schemas in the database by default.
  final pulumi.Input<List<String>>? schemas;
  /// List of PostgreSQL table types which will be queried for table names. Includes all table types by default (including views and temp tables). Use 'BASE TABLE' for normal tables only.
  final pulumi.Input<List<String>>? tableTypes;

  /// Creates a new [GetTablesArgs].
  /// [database] The PostgreSQL database which will be queried for table names.
  /// [likeAllPatterns] List of expressions which will be pattern matched against table names in the query using the PostgreSQL ``LIKE ALL`` operators.
  /// [likeAnyPatterns] List of expressions which will be pattern matched against table names in the query using the PostgreSQL ``LIKE ANY`` operators.
  /// [notLikeAllPatterns] List of expressions which will be pattern matched against table names in the query using the PostgreSQL ``NOT LIKE ALL`` operators.
  /// [regexPattern] Expression which will be pattern matched against table names in the query using the PostgreSQL ``~`` (regular expression match) operator.
  /// [schemas] List of PostgreSQL schema(s) which will be queried for table names. Queries all schemas in the database by default.
  /// [tableTypes] List of PostgreSQL table types which will be queried for table names. Includes all table types by default (including views and temp tables). Use 'BASE TABLE' for normal tables only.
  GetTablesArgs({
    required this.database,
    this.likeAllPatterns,
    this.likeAnyPatterns,
    this.notLikeAllPatterns,
    this.regexPattern,
    this.schemas,
    this.tableTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'likeAllPatterns': ?likeAllPatterns,
      'likeAnyPatterns': ?likeAnyPatterns,
      'notLikeAllPatterns': ?notLikeAllPatterns,
      'regexPattern': ?regexPattern,
      'schemas': ?schemas,
      'tableTypes': ?tableTypes,
    };
  }

  factory GetTablesArgs.fromMap(Map<String, dynamic> map) {
    return GetTablesArgs(
      database: (map['database'] as String).input(),
      likeAllPatterns: map['likeAllPatterns'] == null ? null : ((map['likeAllPatterns'] as List).cast<String>()).input(),
      likeAnyPatterns: map['likeAnyPatterns'] == null ? null : ((map['likeAnyPatterns'] as List).cast<String>()).input(),
      notLikeAllPatterns: map['notLikeAllPatterns'] == null ? null : ((map['notLikeAllPatterns'] as List).cast<String>()).input(),
      regexPattern: map['regexPattern'] == null ? null : (map['regexPattern'] as String).input(),
      schemas: map['schemas'] == null ? null : ((map['schemas'] as List).cast<String>()).input(),
      tableTypes: map['tableTypes'] == null ? null : ((map['tableTypes'] as List).cast<String>()).input(),
    );
  }
}

