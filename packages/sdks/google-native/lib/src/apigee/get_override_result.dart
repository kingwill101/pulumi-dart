// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_trace_sampling_config_response.dart';

/// Result data returned by getOverride.
class GetOverrideResult {
  /// ID of the API proxy that will have its trace configuration overridden.
  final String? apiProxy;
  /// ID of the trace configuration override specified as a system-generated UUID.
  final String? name;
  /// Trace configuration to override.
  final GoogleCloudApigeeV1TraceSamplingConfigResponse? samplingConfig;

  /// Creates a new [GetOverrideResult].
  /// [apiProxy] ID of the API proxy that will have its trace configuration overridden.
  /// [name] ID of the trace configuration override specified as a system-generated UUID.
  /// [samplingConfig] Trace configuration to override.
  const GetOverrideResult({
    this.apiProxy,
    this.name,
    this.samplingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProxy': ?apiProxy,
      'name': ?name,
      'samplingConfig': ?samplingConfig?.toMap(),
    };
  }

  factory GetOverrideResult.fromMap(Map<String, dynamic> map) {
    return GetOverrideResult(
      apiProxy: (() { final guardedValue = map['apiProxy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      samplingConfig: (() { final guardedValue = map['samplingConfig']; if (guardedValue == null) return null; return GoogleCloudApigeeV1TraceSamplingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
