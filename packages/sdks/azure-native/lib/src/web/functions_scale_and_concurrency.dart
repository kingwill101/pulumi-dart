// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_always_ready_config.dart';
import 'functions_scale_and_concurrency_triggers.dart';

/// Scale and concurrency settings for the function app.
class FunctionsScaleAndConcurrency {
  /// 'Always Ready' configuration for the function app.
  final List<FunctionsAlwaysReadyConfig>? alwaysReady;
  /// Set the amount of memory allocated to each instance of the function app in MB. CPU and network bandwidth are allocated proportionally.
  final int? instanceMemoryMB;
  /// The maximum number of instances for the function app.
  final int? maximumInstanceCount;
  /// Scale and concurrency settings for the function app triggers.
  final FunctionsScaleAndConcurrencyTriggers? triggers;

  /// Creates a new [FunctionsScaleAndConcurrency].
  /// [alwaysReady] 'Always Ready' configuration for the function app.
  /// [instanceMemoryMB] Set the amount of memory allocated to each instance of the function app in MB. CPU and network bandwidth are allocated proportionally.
  /// [maximumInstanceCount] The maximum number of instances for the function app.
  /// [triggers] Scale and concurrency settings for the function app triggers.
  FunctionsScaleAndConcurrency({
    this.alwaysReady,
    this.instanceMemoryMB,
    this.maximumInstanceCount,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysReady': ?alwaysReady == null ? null : pulumi.Input.encodeList<FunctionsAlwaysReadyConfig, Map<String, dynamic>>(alwaysReady!, (value) => value.toMap()),
      'instanceMemoryMB': ?instanceMemoryMB,
      'maximumInstanceCount': ?maximumInstanceCount,
      'triggers': ?triggers == null ? null : triggers!.toMap(),
    };
  }

  factory FunctionsScaleAndConcurrency.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrency(
      alwaysReady: map['alwaysReady'] == null ? null : pulumi.Input.decodeList<FunctionsAlwaysReadyConfig>(map['alwaysReady'], (value) => FunctionsAlwaysReadyConfig.fromMap((value as Map).cast<String, dynamic>())),
      instanceMemoryMB: map['instanceMemoryMB'] == null ? null : map['instanceMemoryMB'] as int,
      maximumInstanceCount: map['maximumInstanceCount'] == null ? null : map['maximumInstanceCount'] as int,
      triggers: map['triggers'] == null ? null : FunctionsScaleAndConcurrencyTriggers.fromMap((map['triggers'] as Map).cast<String, dynamic>()),
    );
  }
}

