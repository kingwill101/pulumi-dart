// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TraceSamplingConfig represents the detail settings of distributed tracing. Only the fields that are defined in the distributed trace configuration can be overridden using the distribute trace configuration override APIs.
class GoogleCloudApigeeV1TraceSamplingConfigResponse {
  /// Sampler of distributed tracing. OFF is the default value.
  final pulumi.Input<String> sampler;

  /// Field sampling rate. This value is only applicable when using the PROBABILITY sampler. The supported values are &gt; 0 and &lt;= 0.5.
  final pulumi.Input<double> samplingRate;

  /// Creates a new [GoogleCloudApigeeV1TraceSamplingConfigResponse].
  /// [sampler] Sampler of distributed tracing. OFF is the default value.
  /// [samplingRate] Field sampling rate. This value is only applicable when using the PROBABILITY sampler. The supported values are &gt; 0 and &lt;= 0.5.
  GoogleCloudApigeeV1TraceSamplingConfigResponse({
    required this.sampler,
    required this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sampler': sampler, 'samplingRate': samplingRate};
  }

  factory GoogleCloudApigeeV1TraceSamplingConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1TraceSamplingConfigResponse(
      sampler: pulumi.Input.fromValue(map['sampler'] as String),
      samplingRate: pulumi.Input.fromValue(map['samplingRate'] as double),
    );
  }
}
