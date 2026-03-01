// ignore_for_file: unused_element, unnecessary_cast

import 'alias_path_metadata_response.dart';
import 'alias_pattern_response.dart';

/// The type of the paths for alias.
class AliasPathResponse {
  /// The API versions.
  final List<String>? apiVersions;
  /// The metadata of the alias path. If missing, fall back to the default metadata of the alias.
  final AliasPathMetadataResponse metadata;
  /// The path of an alias.
  final String? path;
  /// The pattern for an alias path.
  final AliasPatternResponse? pattern;

  /// Creates a new [AliasPathResponse].
  /// [apiVersions] The API versions.
  /// [metadata] The metadata of the alias path. If missing, fall back to the default metadata of the alias.
  /// [path] The path of an alias.
  /// [pattern] The pattern for an alias path.
  AliasPathResponse({
    this.apiVersions,
    required this.metadata,
    this.path,
    this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersions': ?apiVersions,
      'metadata': metadata.toMap(),
      'path': ?path,
      'pattern': ?pattern == null ? null : pattern!.toMap(),
    };
  }

  factory AliasPathResponse.fromMap(Map<String, dynamic> map) {
    return AliasPathResponse(
      apiVersions: map['apiVersions'] == null ? null : (map['apiVersions'] as List).cast<String>(),
      metadata: AliasPathMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'] as String,
      pattern: map['pattern'] == null ? null : AliasPatternResponse.fromMap((map['pattern'] as Map).cast<String, dynamic>()),
    );
  }
}

