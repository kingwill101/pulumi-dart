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
      apiVersions: (() { final guardedValue = map['apiVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      metadata: pulumi.Input.fromValue(AliasPathMetadataResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AliasPatternResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

