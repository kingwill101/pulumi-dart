// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_ai_cache_config_ai_cache_config_args_doc}
/// The set of arguments for AiCacheConfig.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_cache_config_ai_cache_config_args_doc}
class AiCacheConfigArgs {
  /// If set to true, disables GenAI caching. Otherwise caching is enabled.
  final pulumi.Input<bool> disableCache;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [AiCacheConfigArgs].
  /// [disableCache] If set to true, disables GenAI caching. Otherwise caching is enabled.
  /// [project] The ID of the project in which the resource belongs.
  const AiCacheConfigArgs({
    required this.disableCache,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableCache': disableCache,
      'project': ?project,
    };
  }

  factory AiCacheConfigArgs.fromMap(Map<String, dynamic> map) {
    return AiCacheConfigArgs(
      disableCache: pulumi.Input.fromValue(map['disableCache'] as bool),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
