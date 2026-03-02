// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_path_metadata_response.dart';
import 'alias_pattern_response.dart';

/// The type of the paths for alias.
class AliasPathResponse {
  /// The API versions.
  final pulumi.Input<List<String>>? apiVersions;
  /// The metadata of the alias path. If missing, fall back to the default metadata of the alias.
  final pulumi.Input<AliasPathMetadataResponse> metadata;
  /// The path of an alias.
  final pulumi.Input<String>? path;
  /// The pattern for an alias path.
  final pulumi.Input<AliasPatternResponse>? pattern;

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
      'metadata': pulumi.Input.mapInputValue<AliasPathMetadataResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'path': ?path,
      'pattern': ?pulumi.Input.mapOptionalInputValue<AliasPatternResponse, Map<String, dynamic>>(pattern, (value) => value.toMap()),
    };
  }

  factory AliasPathResponse.fromMap(Map<String, dynamic> map) {
    return AliasPathResponse(
      apiVersions: map['apiVersions'] == null ? null : ((map['apiVersions'] as List).cast<String>()).input(),
      metadata: (AliasPathMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      pattern: map['pattern'] == null ? null : (AliasPatternResponse.fromMap((map['pattern'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

