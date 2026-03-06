// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSchemas.
class GetSchemasResult {
  final String database;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? includeSystemSchemas;
  final List<String>? likeAllPatterns;
  final List<String>? likeAnyPatterns;
  final List<String>? notLikeAllPatterns;
  final String? regexPattern;
  /// A list of full names of found schemas.
  final List<String> schemas;

  /// Creates a new [GetSchemasResult].
  /// [database] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includeSystemSchemas] Optional.
  /// [likeAllPatterns] Optional.
  /// [likeAnyPatterns] Optional.
  /// [notLikeAllPatterns] Optional.
  /// [regexPattern] Optional.
  /// [schemas] A list of full names of found schemas.
  const GetSchemasResult({
    required this.database,
    required this.id,
    this.includeSystemSchemas,
    this.likeAllPatterns,
    this.likeAnyPatterns,
    this.notLikeAllPatterns,
    this.regexPattern,
    required this.schemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'id': id,
      'includeSystemSchemas': ?includeSystemSchemas,
      'likeAllPatterns': ?likeAllPatterns,
      'likeAnyPatterns': ?likeAnyPatterns,
      'notLikeAllPatterns': ?notLikeAllPatterns,
      'regexPattern': ?regexPattern,
      'schemas': schemas,
    };
  }

  factory GetSchemasResult.fromMap(Map<String, dynamic> map) {
    return GetSchemasResult(
      database: map['database'] as String,
      id: map['id'] as String,
      includeSystemSchemas: (() { final guardedValue = map['includeSystemSchemas']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      likeAllPatterns: (() { final guardedValue = map['likeAllPatterns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      likeAnyPatterns: (() { final guardedValue = map['likeAnyPatterns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      notLikeAllPatterns: (() { final guardedValue = map['notLikeAllPatterns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      regexPattern: (() { final guardedValue = map['regexPattern']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemas: (map['schemas'] as List).cast<String>(),
    );
  }
}

