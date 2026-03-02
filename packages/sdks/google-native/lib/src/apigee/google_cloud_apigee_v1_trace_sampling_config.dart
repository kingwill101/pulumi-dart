// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_trace_sampling_config_sampler.dart';

/// TraceSamplingConfig represents the detail settings of distributed tracing. Only the fields that are defined in the distributed trace configuration can be overridden using the distribute trace configuration override APIs.
class GoogleCloudApigeeV1TraceSamplingConfig {
  /// Sampler of distributed tracing. OFF is the default value.
  final pulumi.Input<GoogleCloudApigeeV1TraceSamplingConfigSampler>? sampler;
  /// Field sampling rate. This value is only applicable when using the PROBABILITY sampler. The supported values are > 0 and <= 0.5.
  final pulumi.Input<double>? samplingRate;

  /// Creates a new [GoogleCloudApigeeV1TraceSamplingConfig].
  /// [sampler] Sampler of distributed tracing. OFF is the default value.
  /// [samplingRate] Field sampling rate. This value is only applicable when using the PROBABILITY sampler. The supported values are > 0 and <= 0.5.
  GoogleCloudApigeeV1TraceSamplingConfig({
    this.sampler,
    this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sampler': ?pulumi.Input.mapOptionalInputValue<GoogleCloudApigeeV1TraceSamplingConfigSampler, String>(sampler, (value) => value.value),
      'samplingRate': ?samplingRate,
    };
  }

  factory GoogleCloudApigeeV1TraceSamplingConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1TraceSamplingConfig(
      sampler: map['sampler'] == null ? null : (GoogleCloudApigeeV1TraceSamplingConfigSampler.fromValue(map['sampler'] as String)).input(),
      samplingRate: map['samplingRate'] == null ? null : (map['samplingRate'] as double).input(),
    );
  }
}

