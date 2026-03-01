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
  GetSchemasResult({
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
      includeSystemSchemas: map['includeSystemSchemas'] == null ? null : map['includeSystemSchemas'] as bool,
      likeAllPatterns: map['likeAllPatterns'] == null ? null : (map['likeAllPatterns'] as List).cast<String>(),
      likeAnyPatterns: map['likeAnyPatterns'] == null ? null : (map['likeAnyPatterns'] as List).cast<String>(),
      notLikeAllPatterns: map['notLikeAllPatterns'] == null ? null : (map['notLikeAllPatterns'] as List).cast<String>(),
      regexPattern: map['regexPattern'] == null ? null : map['regexPattern'] as String,
      schemas: (map['schemas'] as List).cast<String>(),
    );
  }
}

