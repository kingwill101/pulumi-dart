// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_internal_monitoring_pipeline_sink_description_response.dart';

/// Describes the diagnostics options available
class DiagnosticsDescriptionResponse {
  /// The sinks to be used if diagnostics is enabled. Sink choices can be overridden at the service and code package level.
  final pulumi.Input<List<String>>? defaultSinkRefs;
  /// Status of whether or not sinks are enabled.
  final pulumi.Input<bool>? enabled;
  /// List of supported sinks that can be referenced.
  final pulumi.Input<List<AzureInternalMonitoringPipelineSinkDescriptionResponse>>? sinks;

  /// Creates a new [DiagnosticsDescriptionResponse].
  /// [defaultSinkRefs] The sinks to be used if diagnostics is enabled. Sink choices can be overridden at the service and code package level.
  /// [enabled] Status of whether or not sinks are enabled.
  /// [sinks] List of supported sinks that can be referenced.
  DiagnosticsDescriptionResponse({
    this.defaultSinkRefs,
    this.enabled,
    this.sinks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultSinkRefs': ?defaultSinkRefs,
      'enabled': ?enabled,
      'sinks': ?pulumi.Input.mapOptionalInputValue<List<AzureInternalMonitoringPipelineSinkDescriptionResponse>, List<Map<String, dynamic>>>(sinks, (value) => pulumi.Input.encodeList<AzureInternalMonitoringPipelineSinkDescriptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiagnosticsDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return DiagnosticsDescriptionResponse(
      defaultSinkRefs: (() { final guardedValue = map['defaultSinkRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sinks: (() { final guardedValue = map['sinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureInternalMonitoringPipelineSinkDescriptionResponse>(guardedValue, (value) => AzureInternalMonitoringPipelineSinkDescriptionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

