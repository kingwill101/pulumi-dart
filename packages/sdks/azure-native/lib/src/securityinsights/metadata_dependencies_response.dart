// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dependencies for the content item, what other content items it requires to work.  Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex dependencies.
class MetadataDependenciesResponse {
  /// Id of the content item we depend on
  final pulumi.Input<String>? contentId;
  /// This is the list of dependencies we must fulfill, according to the AND/OR operator
  final pulumi.Input<List<MetadataDependenciesResponse>>? criteria;
  /// Type of the content item we depend on
  final pulumi.Input<String>? kind;
  /// Name of the content item
  final pulumi.Input<String>? name;
  /// Operator used for list of dependencies in criteria array.
  final pulumi.Input<String>? operator;
  /// Version of the the content item we depend on.  Can be blank, * or missing to indicate any version fulfills the dependency.  If version does not match our defined numeric format then an exact match is required.
  final pulumi.Input<String>? version;

  /// Creates a new [MetadataDependenciesResponse].
  /// [contentId] Id of the content item we depend on
  /// [criteria] This is the list of dependencies we must fulfill, according to the AND/OR operator
  /// [kind] Type of the content item we depend on
  /// [name] Name of the content item
  /// [operator] Operator used for list of dependencies in criteria array.
  /// [version] Version of the the content item we depend on.  Can be blank, * or missing to indicate any version fulfills the dependency.  If version does not match our defined numeric format then an exact match is required.
  MetadataDependenciesResponse({
    this.contentId,
    this.criteria,
    this.kind,
    this.name,
    this.operator,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentId': ?contentId,
      'criteria': ?pulumi.Input.mapOptionalInputValue<List<MetadataDependenciesResponse>, List<Map<String, dynamic>>>(criteria, (value) => pulumi.Input.encodeList<MetadataDependenciesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'name': ?name,
      'operator': ?operator,
      'version': ?version,
    };
  }

  factory MetadataDependenciesResponse.fromMap(Map<String, dynamic> map) {
    return MetadataDependenciesResponse(
      contentId: map['contentId'] == null ? null : (map['contentId'] as String).input(),
      criteria: map['criteria'] == null ? null : (pulumi.Input.decodeList<MetadataDependenciesResponse>(map['criteria'], (value) => MetadataDependenciesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      operator: map['operator'] == null ? null : (map['operator'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

