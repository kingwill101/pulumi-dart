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
  const GetSchemasArgs({
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
      database: pulumi.Input.fromValue(map['database'] as String),
      includeSystemSchemas: (() { final guardedValue = map['includeSystemSchemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      likeAllPatterns: (() { final guardedValue = map['likeAllPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      likeAnyPatterns: (() { final guardedValue = map['likeAnyPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notLikeAllPatterns: (() { final guardedValue = map['notLikeAllPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      regexPattern: (() { final guardedValue = map['regexPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

