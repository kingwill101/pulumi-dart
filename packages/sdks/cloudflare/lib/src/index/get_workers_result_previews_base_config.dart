// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_result_previews_base_config_cache_options.dart';
import 'get_workers_result_previews_base_config_env.dart';
import 'get_workers_result_previews_base_config_limits.dart';
import 'get_workers_result_previews_base_config_observability.dart';
import 'get_workers_result_previews_base_config_placement.dart';
import 'get_workers_result_previews_base_config_tail_consumer.dart';

class GetWorkersResultPreviewsBaseConfig {
  /// Cache options used when creating new Previews.
  final pulumi.Input<GetWorkersResultPreviewsBaseConfigCacheOptions> cacheOptions;
  /// Bindings used when creating new Previews, keyed by binding name.
  final pulumi.Input<Map<String, GetWorkersResultPreviewsBaseConfigEnv>> env;
  /// Resource limits enforced at runtime for newly created Previews.
  final pulumi.Input<GetWorkersResultPreviewsBaseConfigLimits> limits;
  /// Whether logpush is enabled when creating new Previews.
  final pulumi.Input<bool> logpush;
  /// Observability settings used when creating new Previews.
  final pulumi.Input<GetWorkersResultPreviewsBaseConfigObservability> observability;
  /// Placement configuration used when creating new Previews.
  final pulumi.Input<GetWorkersResultPreviewsBaseConfigPlacement> placement;
  /// Other Workers that should consume logs from newly created Previews.
  final pulumi.Input<List<GetWorkersResultPreviewsBaseConfigTailConsumer>> tailConsumers;

  /// Creates a new [GetWorkersResultPreviewsBaseConfig].
  /// [cacheOptions] Cache options used when creating new Previews.
  /// [env] Bindings used when creating new Previews, keyed by binding name.
  /// [limits] Resource limits enforced at runtime for newly created Previews.
  /// [logpush] Whether logpush is enabled when creating new Previews.
  /// [observability] Observability settings used when creating new Previews.
  /// [placement] Placement configuration used when creating new Previews.
  /// [tailConsumers] Other Workers that should consume logs from newly created Previews.
  const GetWorkersResultPreviewsBaseConfig({
    required this.cacheOptions,
    required this.env,
    required this.limits,
    required this.logpush,
    required this.observability,
    required this.placement,
    required this.tailConsumers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheOptions': pulumi.Input.mapInputValue<GetWorkersResultPreviewsBaseConfigCacheOptions, Map<String, dynamic>>(cacheOptions, (value) => value.toMap()),
      'env': pulumi.Input.mapInputValue<Map<String, GetWorkersResultPreviewsBaseConfigEnv>, Map<String, Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeMapValues<GetWorkersResultPreviewsBaseConfigEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': pulumi.Input.mapInputValue<GetWorkersResultPreviewsBaseConfigLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'logpush': logpush,
      'observability': pulumi.Input.mapInputValue<GetWorkersResultPreviewsBaseConfigObservability, Map<String, dynamic>>(observability, (value) => value.toMap()),
      'placement': pulumi.Input.mapInputValue<GetWorkersResultPreviewsBaseConfigPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'tailConsumers': pulumi.Input.mapInputValue<List<GetWorkersResultPreviewsBaseConfigTailConsumer>, List<Map<String, dynamic>>>(tailConsumers, (value) => pulumi.Input.encodeList<GetWorkersResultPreviewsBaseConfigTailConsumer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkersResultPreviewsBaseConfig.fromMap(Map<String, dynamic> map) {
    return GetWorkersResultPreviewsBaseConfig(
      cacheOptions: pulumi.Input.fromValue(GetWorkersResultPreviewsBaseConfigCacheOptions.fromMap((map['cacheOptions']! as Map).cast<String, dynamic>())),
      env: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetWorkersResultPreviewsBaseConfigEnv>(map['env']!, (value) => GetWorkersResultPreviewsBaseConfigEnv.fromMap((value as Map).cast<String, dynamic>()))),
      limits: pulumi.Input.fromValue(GetWorkersResultPreviewsBaseConfigLimits.fromMap((map['limits']! as Map).cast<String, dynamic>())),
      logpush: pulumi.Input.fromValue(map['logpush'] as bool),
      observability: pulumi.Input.fromValue(GetWorkersResultPreviewsBaseConfigObservability.fromMap((map['observability']! as Map).cast<String, dynamic>())),
      placement: pulumi.Input.fromValue(GetWorkersResultPreviewsBaseConfigPlacement.fromMap((map['placement']! as Map).cast<String, dynamic>())),
      tailConsumers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkersResultPreviewsBaseConfigTailConsumer>(map['tailConsumers']!, (value) => GetWorkersResultPreviewsBaseConfigTailConsumer.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
