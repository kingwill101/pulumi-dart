// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sequences_sequence.dart';

/// Result data returned by getSequences.
class GetSequencesResult {
  final String? database;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<String>? likeAllPatterns;
  final List<String>? likeAnyPatterns;
  final List<String>? notLikeAllPatterns;
  final String? regexPattern;
  final List<String>? schemas;
  /// A list of PostgreSQL sequences retrieved by this data source. Each sequence consists of the fields documented below.
  /// ___
  final List<GetSequencesSequence>? sequences;

  /// Creates a new [GetSequencesResult].
  /// [database] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [likeAllPatterns] Optional.
  /// [likeAnyPatterns] Optional.
  /// [notLikeAllPatterns] Optional.
  /// [regexPattern] Optional.
  /// [schemas] Optional.
  /// [sequences] A list of PostgreSQL sequences retrieved by this data source. Each sequence consists of the fields documented below.
  const GetSequencesResult({
    this.database,
    this.id,
    this.likeAllPatterns,
    this.likeAnyPatterns,
    this.notLikeAllPatterns,
    this.regexPattern,
    this.schemas,
    this.sequences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'id': ?id,
      'likeAllPatterns': ?likeAllPatterns,
      'likeAnyPatterns': ?likeAnyPatterns,
      'notLikeAllPatterns': ?notLikeAllPatterns,
      'regexPattern': ?regexPattern,
      'schemas': ?schemas,
      'sequences': ?(() { final guardedValue = sequences; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSequencesSequence, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSequencesResult.fromMap(Map<String, dynamic> map) {
    return GetSequencesResult(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      likeAllPatterns: (() { final guardedValue = map['likeAllPatterns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      likeAnyPatterns: (() { final guardedValue = map['likeAnyPatterns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      notLikeAllPatterns: (() { final guardedValue = map['notLikeAllPatterns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      regexPattern: (() { final guardedValue = map['regexPattern']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemas: (() { final guardedValue = map['schemas']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sequences: (() { final guardedValue = map['sequences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSequencesSequence>(guardedValue, (value) => GetSequencesSequence.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
