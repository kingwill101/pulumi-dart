// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_always_ready_config_response.dart';
import 'functions_scale_and_concurrency_response_triggers.dart';

/// Scale and concurrency settings for the function app.
class FunctionsScaleAndConcurrencyResponse {
  /// 'Always Ready' configuration for the function app.
  final List<FunctionsAlwaysReadyConfigResponse>? alwaysReady;
  /// Set the amount of memory allocated to each instance of the function app in MB. CPU and network bandwidth are allocated proportionally.
  final int? instanceMemoryMB;
  /// The maximum number of instances for the function app.
  final int? maximumInstanceCount;
  /// Scale and concurrency settings for the function app triggers.
  final FunctionsScaleAndConcurrencyResponseTriggers? triggers;

  /// Creates a new [FunctionsScaleAndConcurrencyResponse].
  /// [alwaysReady] 'Always Ready' configuration for the function app.
  /// [instanceMemoryMB] Set the amount of memory allocated to each instance of the function app in MB. CPU and network bandwidth are allocated proportionally.
  /// [maximumInstanceCount] The maximum number of instances for the function app.
  /// [triggers] Scale and concurrency settings for the function app triggers.
  FunctionsScaleAndConcurrencyResponse({
    this.alwaysReady,
    this.instanceMemoryMB,
    this.maximumInstanceCount,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysReady': ?alwaysReady == null ? null : pulumi.Input.encodeList<FunctionsAlwaysReadyConfigResponse, Map<String, dynamic>>(alwaysReady!, (value) => value.toMap()),
      'instanceMemoryMB': ?instanceMemoryMB,
      'maximumInstanceCount': ?maximumInstanceCount,
      'triggers': ?triggers == null ? null : triggers!.toMap(),
    };
  }

  factory FunctionsScaleAndConcurrencyResponse.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrencyResponse(
      alwaysReady: map['alwaysReady'] == null ? null : pulumi.Input.decodeList<FunctionsAlwaysReadyConfigResponse>(map['alwaysReady'], (value) => FunctionsAlwaysReadyConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      instanceMemoryMB: map['instanceMemoryMB'] == null ? null : map['instanceMemoryMB'] as int,
      maximumInstanceCount: map['maximumInstanceCount'] == null ? null : map['maximumInstanceCount'] as int,
      triggers: map['triggers'] == null ? null : FunctionsScaleAndConcurrencyResponseTriggers.fromMap((map['triggers'] as Map).cast<String, dynamic>()),
    );
  }
}

