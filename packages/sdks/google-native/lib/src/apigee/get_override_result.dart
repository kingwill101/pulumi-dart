// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_trace_sampling_config_response.dart';

/// Result data returned by getOverride.
class GetOverrideResult {
  /// ID of the API proxy that will have its trace configuration overridden.
  final String apiProxy;
  /// ID of the trace configuration override specified as a system-generated UUID.
  final String name;
  /// Trace configuration to override.
  final GoogleCloudApigeeV1TraceSamplingConfigResponse samplingConfig;

  /// Creates a new [GetOverrideResult].
  /// [apiProxy] ID of the API proxy that will have its trace configuration overridden.
  /// [name] ID of the trace configuration override specified as a system-generated UUID.
  /// [samplingConfig] Trace configuration to override.
  GetOverrideResult({
    required this.apiProxy,
    required this.name,
    required this.samplingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProxy': apiProxy,
      'name': name,
      'samplingConfig': samplingConfig.toMap(),
    };
  }

  factory GetOverrideResult.fromMap(Map<String, dynamic> map) {
    return GetOverrideResult(
      apiProxy: map['apiProxy'] as String,
      name: map['name'] as String,
      samplingConfig: GoogleCloudApigeeV1TraceSamplingConfigResponse.fromMap((map['samplingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

