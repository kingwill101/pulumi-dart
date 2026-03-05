// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_sequences_get_sequences_args_doc}
/// Arguments for getSequences.
/// {@endtemplate}
/// {@macro pulumi_index_get_sequences_get_sequences_args_doc}
class GetSequencesArgs {
  /// The PostgreSQL database which will be queried for sequence names.
  final pulumi.Input<String> database;
  /// List of expressions which will be pattern matched against sequence names in the query using the PostgreSQL ``LIKE ALL`` operators.
  final pulumi.Input<List<String>>? likeAllPatterns;
  /// List of expressions which will be pattern matched against sequence names in the query using the PostgreSQL ``LIKE ANY`` operators.
  final pulumi.Input<List<String>>? likeAnyPatterns;
  /// List of expressions which will be pattern matched against sequence names in the query using the PostgreSQL ``NOT LIKE ALL`` operators.
  final pulumi.Input<List<String>>? notLikeAllPatterns;
  /// Expression which will be pattern matched against sequence names in the query using the PostgreSQL ``~`` (regular expression match) operator.
  ///
  /// Note that all optional arguments can be used in conjunction.
  final pulumi.Input<String>? regexPattern;
  /// List of PostgreSQL schema(s) which will be queried for sequence names. Queries all schemas in the database by default.
  final pulumi.Input<List<String>>? schemas;

  /// Creates a new [GetSequencesArgs].
  /// [database] The PostgreSQL database which will be queried for sequence names.
  /// [likeAllPatterns] List of expressions which will be pattern matched against sequence names in the query using the PostgreSQL ``LIKE ALL`` operators.
  /// [likeAnyPatterns] List of expressions which will be pattern matched against sequence names in the query using the PostgreSQL ``LIKE ANY`` operators.
  /// [notLikeAllPatterns] List of expressions which will be pattern matched against sequence names in the query using the PostgreSQL ``NOT LIKE ALL`` operators.
  /// [regexPattern] Expression which will be pattern matched against sequence names in the query using the PostgreSQL ``~`` (regular expression match) operator.
  /// [schemas] List of PostgreSQL schema(s) which will be queried for sequence names. Queries all schemas in the database by default.
  GetSequencesArgs({
    required this.database,
    this.likeAllPatterns,
    this.likeAnyPatterns,
    this.notLikeAllPatterns,
    this.regexPattern,
    this.schemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'likeAllPatterns': ?likeAllPatterns,
      'likeAnyPatterns': ?likeAnyPatterns,
      'notLikeAllPatterns': ?notLikeAllPatterns,
      'regexPattern': ?regexPattern,
      'schemas': ?schemas,
    };
  }

  factory GetSequencesArgs.fromMap(Map<String, dynamic> map) {
    return GetSequencesArgs(
      database: pulumi.Input.fromValue(map['database'] as String),
      likeAllPatterns: (() { final guardedValue = map['likeAllPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      likeAnyPatterns: (() { final guardedValue = map['likeAnyPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notLikeAllPatterns: (() { final guardedValue = map['notLikeAllPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      regexPattern: (() { final guardedValue = map['regexPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemas: (() { final guardedValue = map['schemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

