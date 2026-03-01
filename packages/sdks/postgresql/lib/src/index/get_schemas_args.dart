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
    required pulumi.Output<String> database,
    pulumi.Output<bool>? includeSystemSchemas,
    pulumi.Output<List<String>>? likeAllPatterns,
    pulumi.Output<List<String>>? likeAnyPatterns,
    pulumi.Output<List<String>>? notLikeAllPatterns,
    pulumi.Output<String>? regexPattern,
  }) :
      database = pulumi.Input.asInput<String>(database),
      includeSystemSchemas = pulumi.Input.asOptionalInput<bool>(includeSystemSchemas),
      likeAllPatterns = pulumi.Input.asOptionalInput<List<String>>(likeAllPatterns),
      likeAnyPatterns = pulumi.Input.asOptionalInput<List<String>>(likeAnyPatterns),
      notLikeAllPatterns = pulumi.Input.asOptionalInput<List<String>>(notLikeAllPatterns),
      regexPattern = pulumi.Input.asOptionalInput<String>(regexPattern);

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
      database: pulumi.Output.create<String>(map['database'] as String),
      includeSystemSchemas: map['includeSystemSchemas'] == null ? null : pulumi.Output.create<bool>(map['includeSystemSchemas'] as bool),
      likeAllPatterns: map['likeAllPatterns'] == null ? null : pulumi.Output.create<List<String>>((map['likeAllPatterns'] as List).cast<String>()),
      likeAnyPatterns: map['likeAnyPatterns'] == null ? null : pulumi.Output.create<List<String>>((map['likeAnyPatterns'] as List).cast<String>()),
      notLikeAllPatterns: map['notLikeAllPatterns'] == null ? null : pulumi.Output.create<List<String>>((map['notLikeAllPatterns'] as List).cast<String>()),
      regexPattern: map['regexPattern'] == null ? null : pulumi.Output.create<String>(map['regexPattern'] as String),
    );
  }
}

