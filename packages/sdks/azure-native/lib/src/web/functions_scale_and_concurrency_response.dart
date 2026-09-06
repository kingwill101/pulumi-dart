// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_always_ready_config_response.dart';
import 'functions_scale_and_concurrency_triggers_response.dart';

/// Scale and concurrency settings for the function app.
class FunctionsScaleAndConcurrencyResponse {
  /// 'Always Ready' configuration for the function app.
  final pulumi.Input<List<FunctionsAlwaysReadyConfigResponse>?>? alwaysReady;
  /// Set the amount of memory allocated to each instance of the function app in MB. CPU and network bandwidth are allocated proportionally.
  final pulumi.Input<int?>? instanceMemoryMB;
  /// The maximum number of on demand instances per function group.
  final pulumi.Input<int?>? maximumInstanceCount;
  /// Scale and concurrency settings for the function app triggers.
  final pulumi.Input<FunctionsScaleAndConcurrencyTriggersResponse?>? triggers;

  /// Creates a new [FunctionsScaleAndConcurrencyResponse].
  /// [alwaysReady] 'Always Ready' configuration for the function app.
  /// [instanceMemoryMB] Set the amount of memory allocated to each instance of the function app in MB. CPU and network bandwidth are allocated proportionally.
  /// [maximumInstanceCount] The maximum number of on demand instances per function group.
  /// [triggers] Scale and concurrency settings for the function app triggers.
  const FunctionsScaleAndConcurrencyResponse({
    this.alwaysReady,
    this.instanceMemoryMB,
    this.maximumInstanceCount,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysReady': ?pulumi.Input.mapOptionalInputValue<List<FunctionsAlwaysReadyConfigResponse>, List<Map<String, dynamic>>>(alwaysReady, (value) => pulumi.Input.encodeList<FunctionsAlwaysReadyConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceMemoryMB': ?instanceMemoryMB,
      'maximumInstanceCount': ?maximumInstanceCount,
      'triggers': ?pulumi.Input.mapOptionalInputValue<FunctionsScaleAndConcurrencyTriggersResponse, Map<String, dynamic>>(triggers, (value) => value.toMap()),
    };
  }

  factory FunctionsScaleAndConcurrencyResponse.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrencyResponse(
      alwaysReady: (() { final guardedValue = map['alwaysReady']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FunctionsAlwaysReadyConfigResponse>(guardedValue, (value) => FunctionsAlwaysReadyConfigResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceMemoryMB: (() { final guardedValue = map['instanceMemoryMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maximumInstanceCount: (() { final guardedValue = map['maximumInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionsScaleAndConcurrencyTriggersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
