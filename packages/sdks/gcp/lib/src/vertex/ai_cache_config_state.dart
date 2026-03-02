// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiCacheConfig resources.
class AiCacheConfigState {
  /// If set to true, disables GenAI caching. Otherwise caching is enabled.
  final pulumi.Input<bool>? disableCache;
  /// Identifier. name of the cache config. Format: - `projects/{project}/cacheConfig`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [AiCacheConfigState].
  /// [disableCache] If set to true, disables GenAI caching. Otherwise caching is enabled.
  /// [name] Identifier. name of the cache config. Format: - `projects/{project}/cacheConfig`.
  /// [project] The ID of the project in which the resource belongs.
  AiCacheConfigState({
    this.disableCache,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableCache': ?disableCache,
      'name': ?name,
      'project': ?project,
    };
  }

  factory AiCacheConfigState.fromMap(Map<String, dynamic> map) {
    return AiCacheConfigState(
      disableCache: map['disableCache'] == null ? null : (map['disableCache']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

