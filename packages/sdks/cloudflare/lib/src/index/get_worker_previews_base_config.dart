// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_previews_base_config_cache_options.dart';
import 'get_worker_previews_base_config_env.dart';
import 'get_worker_previews_base_config_limits.dart';
import 'get_worker_previews_base_config_observability.dart';
import 'get_worker_previews_base_config_placement.dart';
import 'get_worker_previews_base_config_tail_consumer.dart';

class GetWorkerPreviewsBaseConfig {
  /// Cache options used when creating new Previews.
  final pulumi.Input<GetWorkerPreviewsBaseConfigCacheOptions> cacheOptions;
  /// Bindings used when creating new Previews, keyed by binding name.
  final pulumi.Input<Map<String, GetWorkerPreviewsBaseConfigEnv>> env;
  /// Resource limits enforced at runtime for newly created Previews.
  final pulumi.Input<GetWorkerPreviewsBaseConfigLimits> limits;
  /// Whether logpush is enabled when creating new Previews.
  final pulumi.Input<bool> logpush;
  /// Observability settings used when creating new Previews.
  final pulumi.Input<GetWorkerPreviewsBaseConfigObservability> observability;
  /// Placement configuration used when creating new Previews.
  final pulumi.Input<GetWorkerPreviewsBaseConfigPlacement> placement;
  /// Other Workers that should consume logs from newly created Previews.
  final pulumi.Input<List<GetWorkerPreviewsBaseConfigTailConsumer>> tailConsumers;

  /// Creates a new [GetWorkerPreviewsBaseConfig].
  /// [cacheOptions] Cache options used when creating new Previews.
  /// [env] Bindings used when creating new Previews, keyed by binding name.
  /// [limits] Resource limits enforced at runtime for newly created Previews.
  /// [logpush] Whether logpush is enabled when creating new Previews.
  /// [observability] Observability settings used when creating new Previews.
  /// [placement] Placement configuration used when creating new Previews.
  /// [tailConsumers] Other Workers that should consume logs from newly created Previews.
  const GetWorkerPreviewsBaseConfig({
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
      'cacheOptions': pulumi.Input.mapInputValue<GetWorkerPreviewsBaseConfigCacheOptions, Map<String, dynamic>>(cacheOptions, (value) => value.toMap()),
      'env': pulumi.Input.mapInputValue<Map<String, GetWorkerPreviewsBaseConfigEnv>, Map<String, Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeMapValues<GetWorkerPreviewsBaseConfigEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': pulumi.Input.mapInputValue<GetWorkerPreviewsBaseConfigLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'logpush': logpush,
      'observability': pulumi.Input.mapInputValue<GetWorkerPreviewsBaseConfigObservability, Map<String, dynamic>>(observability, (value) => value.toMap()),
      'placement': pulumi.Input.mapInputValue<GetWorkerPreviewsBaseConfigPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'tailConsumers': pulumi.Input.mapInputValue<List<GetWorkerPreviewsBaseConfigTailConsumer>, List<Map<String, dynamic>>>(tailConsumers, (value) => pulumi.Input.encodeList<GetWorkerPreviewsBaseConfigTailConsumer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkerPreviewsBaseConfig.fromMap(Map<String, dynamic> map) {
    return GetWorkerPreviewsBaseConfig(
      cacheOptions: pulumi.Input.fromValue(GetWorkerPreviewsBaseConfigCacheOptions.fromMap((map['cacheOptions']! as Map).cast<String, dynamic>())),
      env: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetWorkerPreviewsBaseConfigEnv>(map['env']!, (value) => GetWorkerPreviewsBaseConfigEnv.fromMap((value as Map).cast<String, dynamic>()))),
      limits: pulumi.Input.fromValue(GetWorkerPreviewsBaseConfigLimits.fromMap((map['limits']! as Map).cast<String, dynamic>())),
      logpush: pulumi.Input.fromValue(map['logpush'] as bool),
      observability: pulumi.Input.fromValue(GetWorkerPreviewsBaseConfigObservability.fromMap((map['observability']! as Map).cast<String, dynamic>())),
      placement: pulumi.Input.fromValue(GetWorkerPreviewsBaseConfigPlacement.fromMap((map['placement']! as Map).cast<String, dynamic>())),
      tailConsumers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerPreviewsBaseConfigTailConsumer>(map['tailConsumers']!, (value) => GetWorkerPreviewsBaseConfigTailConsumer.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
