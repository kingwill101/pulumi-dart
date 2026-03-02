// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_schemas_get_schemas_args_doc}
/// Arguments for getSchemas.
/// {@endtemplate}
/// {@macro pulumi_index_get_schemas_get_schemas_args_doc}
class GetSchemasArgs {
  /// The PostgreSQL database which will be queried for schema names.
  final pulumi.Input<String> database;
  /// Determines whether to include system schemas (pg_ prefix and information_schema). 'public' will always be included. Defaults to ``false``.
  final pulumi.Input<bool>? includeSystemSchemas;
  /// List of expressions which will be pattern matched in the query using the PostgreSQL ``LIKE ALL`` operators.
  final pulumi.Input<List<String>>? likeAllPatterns;
  /// List of expressions which will be pattern matched in the query using the PostgreSQL ``LIKE ANY`` operators.
  final pulumi.Input<List<String>>? likeAnyPatterns;
  /// List of expressions which will be pattern matched in the query using the PostgreSQL ``NOT LIKE ALL`` operators.
  final pulumi.Input<List<String>>? notLikeAllPatterns;
  /// Expression which will be pattern matched in the query using the PostgreSQL ``~`` (regular expression match) operator.
  ///
  /// Note that all optional arguments can be used in conjunction.
  final pulumi.Input<String>? regexPattern;

  /// Creates a new [GetSchemasArgs].
  /// [database] The PostgreSQL database which will be queried for schema names.
  /// [includeSystemSchemas] Determines whether to include system schemas (pg_ prefix and information_schema). 'public' will always be included. Defaults to ``false``.
  /// [likeAllPatterns] List of expressions which will be pattern matched in the query using the PostgreSQL ``LIKE ALL`` operators.
  /// [likeAnyPatterns] List of expressions which will be pattern matched in the query using the PostgreSQL ``LIKE ANY`` operators.
  /// [notLikeAllPatterns] List of expressions which will be pattern matched in the query using the PostgreSQL ``NOT LIKE ALL`` operators.
  /// [regexPattern] Expression which will be pattern matched in the query using the PostgreSQL ``~`` (regular expression match) operator.
  GetSchemasArgs({
    required this.database,
    this.includeSystemSchemas,
    this.likeAllPatterns,
    this.likeAnyPatterns,
    this.notLikeAllPatterns,
    this.regexPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'includeSystemSchemas': ?includeSystemSchemas,
      'likeAllPatterns': ?likeAllPatterns,
      'likeAnyPatterns': ?likeAnyPatterns,
      'notLikeAllPatterns': ?notLikeAllPatterns,
      'regexPattern': ?regexPattern,
    };
  }

  factory GetSchemasArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemasArgs(
      database: (map['database'] as String).input(),
      includeSystemSchemas: map['includeSystemSchemas'] == null ? null : (map['includeSystemSchemas']! as bool).input(),
      likeAllPatterns: map['likeAllPatterns'] == null ? null : ((map['likeAllPatterns']! as List).cast<String>()).input(),
      likeAnyPatterns: map['likeAnyPatterns'] == null ? null : ((map['likeAnyPatterns']! as List).cast<String>()).input(),
      notLikeAllPatterns: map['notLikeAllPatterns'] == null ? null : ((map['notLikeAllPatterns']! as List).cast<String>()).input(),
      regexPattern: map['regexPattern'] == null ? null : (map['regexPattern']! as String).input(),
    );
  }
}

