// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_always_ready_config.dart';
import 'functions_scale_and_concurrency_triggers.dart';

/// Scale and concurrency settings for the function app.
class FunctionsScaleAndConcurrency {
  /// 'Always Ready' configuration for the function app.
  final pulumi.Input<List<FunctionsAlwaysReadyConfig>>? alwaysReady;
  /// Set the amount of memory allocated to each instance of the function app in MB. CPU and network bandwidth are allocated proportionally.
  final pulumi.Input<int>? instanceMemoryMB;
  /// The maximum number of on demand instances per function group.
  final pulumi.Input<int>? maximumInstanceCount;
  /// Scale and concurrency settings for the function app triggers.
  final pulumi.Input<FunctionsScaleAndConcurrencyTriggers>? triggers;

  /// Creates a new [FunctionsScaleAndConcurrency].
  /// [alwaysReady] 'Always Ready' configuration for the function app.
  /// [instanceMemoryMB] Set the amount of memory allocated to each instance of the function app in MB. CPU and network bandwidth are allocated proportionally.
  /// [maximumInstanceCount] The maximum number of on demand instances per function group.
  /// [triggers] Scale and concurrency settings for the function app triggers.
  const FunctionsScaleAndConcurrency({
    this.alwaysReady,
    this.instanceMemoryMB,
    this.maximumInstanceCount,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysReady': ?pulumi.Input.mapOptionalInputValue<List<FunctionsAlwaysReadyConfig>, List<Map<String, dynamic>>>(alwaysReady, (value) => pulumi.Input.encodeList<FunctionsAlwaysReadyConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceMemoryMB': ?instanceMemoryMB,
      'maximumInstanceCount': ?maximumInstanceCount,
      'triggers': ?pulumi.Input.mapOptionalInputValue<FunctionsScaleAndConcurrencyTriggers, Map<String, dynamic>>(triggers, (value) => value.toMap()),
    };
  }

  factory FunctionsScaleAndConcurrency.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrency(
      alwaysReady: (() { final guardedValue = map['alwaysReady']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FunctionsAlwaysReadyConfig>(guardedValue, (value) => FunctionsAlwaysReadyConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceMemoryMB: (() { final guardedValue = map['instanceMemoryMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maximumInstanceCount: (() { final guardedValue = map['maximumInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionsScaleAndConcurrencyTriggers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
