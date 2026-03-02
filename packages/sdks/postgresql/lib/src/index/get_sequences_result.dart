// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sequences_sequence.dart';

/// Result data returned by getSequences.
class GetSequencesResult {
  final String database;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String>? likeAllPatterns;
  final List<String>? likeAnyPatterns;
  final List<String>? notLikeAllPatterns;
  final String? regexPattern;
  final List<String>? schemas;
  /// A list of PostgreSQL sequences retrieved by this data source. Each sequence consists of the fields documented below.
  /// ___
  final List<GetSequencesSequence> sequences;

  /// Creates a new [GetSequencesResult].
  /// [database] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [likeAllPatterns] Optional.
  /// [likeAnyPatterns] Optional.
  /// [notLikeAllPatterns] Optional.
  /// [regexPattern] Optional.
  /// [schemas] Optional.
  /// [sequences] A list of PostgreSQL sequences retrieved by this data source. Each sequence consists of the fields documented below.
  GetSequencesResult({
    required this.database,
    required this.id,
    this.likeAllPatterns,
    this.likeAnyPatterns,
    this.notLikeAllPatterns,
    this.regexPattern,
    this.schemas,
    required this.sequences,
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
      'sequences': pulumi.Input.encodeList<GetSequencesSequence, Map<String, dynamic>>(sequences, (value) => value.toMap()),
    };
  }

  factory GetSequencesResult.fromMap(Map<String, dynamic> map) {
    return GetSequencesResult(
      database: map['database'] as String,
      id: map['id'] as String,
      likeAllPatterns: map['likeAllPatterns'] == null ? null : (map['likeAllPatterns']! as List).cast<String>(),
      likeAnyPatterns: map['likeAnyPatterns'] == null ? null : (map['likeAnyPatterns']! as List).cast<String>(),
      notLikeAllPatterns: map['notLikeAllPatterns'] == null ? null : (map['notLikeAllPatterns']! as List).cast<String>(),
      regexPattern: map['regexPattern'] == null ? null : map['regexPattern']! as String,
      schemas: map['schemas'] == null ? null : (map['schemas']! as List).cast<String>(),
      sequences: pulumi.Input.decodeList<GetSequencesSequence>(map['sequences'], (value) => GetSequencesSequence.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

