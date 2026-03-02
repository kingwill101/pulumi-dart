// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_path_metadata_response.dart';
import 'alias_path_response.dart';
import 'alias_pattern_response.dart';

/// The alias type.
class AliasResponse {
  /// The default alias path metadata. Applies to the default path and to any alias path that doesn't have metadata
  final pulumi.Input<AliasPathMetadataResponse> defaultMetadata;
  /// The default path for an alias.
  final pulumi.Input<String>? defaultPath;
  /// The default pattern for an alias.
  final pulumi.Input<AliasPatternResponse>? defaultPattern;
  /// The alias name.
  final pulumi.Input<String>? name;
  /// The paths for an alias.
  final pulumi.Input<List<AliasPathResponse>>? paths;
  /// The type of the alias.
  final pulumi.Input<String>? type;

  /// Creates a new [AliasResponse].
  /// [defaultMetadata] The default alias path metadata. Applies to the default path and to any alias path that doesn't have metadata
  /// [defaultPath] The default path for an alias.
  /// [defaultPattern] The default pattern for an alias.
  /// [name] The alias name.
  /// [paths] The paths for an alias.
  /// [type] The type of the alias.
  AliasResponse({
    required this.defaultMetadata,
    this.defaultPath,
    this.defaultPattern,
    this.name,
    this.paths,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMetadata': pulumi.Input.mapInputValue<AliasPathMetadataResponse, Map<String, dynamic>>(defaultMetadata, (value) => value.toMap()),
      'defaultPath': ?defaultPath,
      'defaultPattern': ?pulumi.Input.mapOptionalInputValue<AliasPatternResponse, Map<String, dynamic>>(defaultPattern, (value) => value.toMap()),
      'name': ?name,
      'paths': ?pulumi.Input.mapOptionalInputValue<List<AliasPathResponse>, List<Map<String, dynamic>>>(paths, (value) => pulumi.Input.encodeList<AliasPathResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory AliasResponse.fromMap(Map<String, dynamic> map) {
    return AliasResponse(
      defaultMetadata: (AliasPathMetadataResponse.fromMap((map['defaultMetadata'] as Map).cast<String, dynamic>())).input(),
      defaultPath: map['defaultPath'] == null ? null : (map['defaultPath'] as String).input(),
      defaultPattern: map['defaultPattern'] == null ? null : (AliasPatternResponse.fromMap((map['defaultPattern'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      paths: map['paths'] == null ? null : (pulumi.Input.decodeList<AliasPathResponse>(map['paths'], (value) => AliasPathResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

