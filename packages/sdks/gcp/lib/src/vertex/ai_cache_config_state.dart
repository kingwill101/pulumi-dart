// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiCacheConfig resources.
class AiCacheConfigState {
  /// If set to true, disables GenAI caching. Otherwise caching is enabled.
  final pulumi.Input<bool?>? disableCache;
  /// Identifier. name of the cache config. Format: - `projects/{project}/cacheConfig`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the Vertex AI API endpoint used to manage the cache config, e.g. `us-central1`.
  /// The cache config is a project-level setting, so this only selects which regional endpoint
  /// requests are sent to. If not specified, the provider-level region is used.
  final pulumi.Input<String?>? region;

  /// Creates a new [AiCacheConfigState].
  /// [disableCache] If set to true, disables GenAI caching. Otherwise caching is enabled.
  /// [name] Identifier. name of the cache config. Format: - `projects/{project}/cacheConfig`.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the Vertex AI API endpoint used to manage the cache config, e.g. `us-central1`.
  const AiCacheConfigState({
    this.disableCache,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableCache': ?disableCache,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiCacheConfigState.fromMap(Map<String, dynamic> map) {
    return AiCacheConfigState(
      disableCache: (() { final guardedValue = map['disableCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
