// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_internal_monitoring_pipeline_sink_description.dart';

/// Describes the diagnostics options available
class DiagnosticsDescription {
  /// The sinks to be used if diagnostics is enabled. Sink choices can be overridden at the service and code package level.
  final pulumi.Input<List<String>?>? defaultSinkRefs;
  /// Status of whether or not sinks are enabled.
  final pulumi.Input<bool?>? enabled;
  /// List of supported sinks that can be referenced.
  final pulumi.Input<List<AzureInternalMonitoringPipelineSinkDescription>?>? sinks;

  /// Creates a new [DiagnosticsDescription].
  /// [defaultSinkRefs] The sinks to be used if diagnostics is enabled. Sink choices can be overridden at the service and code package level.
  /// [enabled] Status of whether or not sinks are enabled.
  /// [sinks] List of supported sinks that can be referenced.
  const DiagnosticsDescription({
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
      defaultSinkRefs: (() { final guardedValue = map['defaultSinkRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sinks: (() { final guardedValue = map['sinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureInternalMonitoringPipelineSinkDescription>(guardedValue, (value) => AzureInternalMonitoringPipelineSinkDescription.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
