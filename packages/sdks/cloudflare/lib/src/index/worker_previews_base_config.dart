// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_previews_base_config_cache_options.dart';
import 'worker_previews_base_config_env.dart';
import 'worker_previews_base_config_limits.dart';
import 'worker_previews_base_config_observability.dart';
import 'worker_previews_base_config_placement.dart';
import 'worker_previews_base_config_tail_consumer.dart';

class WorkerPreviewsBaseConfig {
  /// Cache options used when creating new Previews.
  final pulumi.Input<WorkerPreviewsBaseConfigCacheOptions?>? cacheOptions;
  /// Bindings used when creating new Previews, keyed by binding name.
  final pulumi.Input<Map<String, WorkerPreviewsBaseConfigEnv>?>? env;
  /// Resource limits enforced at runtime for newly created Previews.
  final pulumi.Input<WorkerPreviewsBaseConfigLimits?>? limits;
  /// Whether logpush is enabled when creating new Previews.
  final pulumi.Input<bool?>? logpush;
  /// Observability settings used when creating new Previews.
  final pulumi.Input<WorkerPreviewsBaseConfigObservability?>? observability;
  /// Placement configuration used when creating new Previews.
  final pulumi.Input<WorkerPreviewsBaseConfigPlacement?>? placement;
  /// Other Workers that should consume logs from newly created Previews.
  final pulumi.Input<List<WorkerPreviewsBaseConfigTailConsumer>?>? tailConsumers;

  /// Creates a new [WorkerPreviewsBaseConfig].
  /// [cacheOptions] Cache options used when creating new Previews.
  /// [env] Bindings used when creating new Previews, keyed by binding name.
  /// [limits] Resource limits enforced at runtime for newly created Previews.
  /// [logpush] Whether logpush is enabled when creating new Previews.
  /// [observability] Observability settings used when creating new Previews.
  /// [placement] Placement configuration used when creating new Previews.
  /// [tailConsumers] Other Workers that should consume logs from newly created Previews.
  const WorkerPreviewsBaseConfig({
    this.cacheOptions,
    this.env,
    this.limits,
    this.logpush,
    this.observability,
    this.placement,
    this.tailConsumers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheOptions': ?pulumi.Input.mapOptionalInputValue<WorkerPreviewsBaseConfigCacheOptions, Map<String, dynamic>>(cacheOptions, (value) => value.toMap()),
      'env': ?pulumi.Input.mapOptionalInputValue<Map<String, WorkerPreviewsBaseConfigEnv>, Map<String, Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeMapValues<WorkerPreviewsBaseConfigEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': ?pulumi.Input.mapOptionalInputValue<WorkerPreviewsBaseConfigLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'logpush': ?logpush,
      'observability': ?pulumi.Input.mapOptionalInputValue<WorkerPreviewsBaseConfigObservability, Map<String, dynamic>>(observability, (value) => value.toMap()),
      'placement': ?pulumi.Input.mapOptionalInputValue<WorkerPreviewsBaseConfigPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'tailConsumers': ?pulumi.Input.mapOptionalInputValue<List<WorkerPreviewsBaseConfigTailConsumer>, List<Map<String, dynamic>>>(tailConsumers, (value) => pulumi.Input.encodeList<WorkerPreviewsBaseConfigTailConsumer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkerPreviewsBaseConfig.fromMap(Map<String, dynamic> map) {
    return WorkerPreviewsBaseConfig(
      cacheOptions: (() { final guardedValue = map['cacheOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPreviewsBaseConfigCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<WorkerPreviewsBaseConfigEnv>(guardedValue, (value) => WorkerPreviewsBaseConfigEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPreviewsBaseConfigLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logpush: (() { final guardedValue = map['logpush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      observability: (() { final guardedValue = map['observability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPreviewsBaseConfigObservability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPreviewsBaseConfigPlacement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tailConsumers: (() { final guardedValue = map['tailConsumers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerPreviewsBaseConfigTailConsumer>(guardedValue, (value) => WorkerPreviewsBaseConfigTailConsumer.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
