// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_internal_monitoring_pipeline_sink_description.dart';

/// Describes the diagnostics options available
class DiagnosticsDescription {
  /// The sinks to be used if diagnostics is enabled. Sink choices can be overridden at the service and code package level.
  final pulumi.Input<List<String>>? defaultSinkRefs;
  /// Status of whether or not sinks are enabled.
  final pulumi.Input<bool>? enabled;
  /// List of supported sinks that can be referenced.
  final pulumi.Input<List<AzureInternalMonitoringPipelineSinkDescription>>? sinks;

  /// Creates a new [DiagnosticsDescription].
  /// [defaultSinkRefs] The sinks to be used if diagnostics is enabled. Sink choices can be overridden at the service and code package level.
  /// [enabled] Status of whether or not sinks are enabled.
  /// [sinks] List of supported sinks that can be referenced.
  DiagnosticsDescription({
    this.defaultSinkRefs,
    this.enabled,
    this.sinks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultSinkRefs': ?defaultSinkRefs,
      'enabled': ?enabled,
      'sinks': ?pulumi.Input.mapOptionalInputValue<List<AzureInternalMonitoringPipelineSinkDescription>, List<Map<String, dynamic>>>(sinks, (value) => pulumi.Input.encodeList<AzureInternalMonitoringPipelineSinkDescription, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiagnosticsDescription.fromMap(Map<String, dynamic> map) {
    return DiagnosticsDescription(
      defaultSinkRefs: map['defaultSinkRefs'] == null ? null : ((map['defaultSinkRefs'] as List).cast<String>()).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      sinks: map['sinks'] == null ? null : (pulumi.Input.decodeList<AzureInternalMonitoringPipelineSinkDescription>(map['sinks'], (value) => AzureInternalMonitoringPipelineSinkDescription.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

