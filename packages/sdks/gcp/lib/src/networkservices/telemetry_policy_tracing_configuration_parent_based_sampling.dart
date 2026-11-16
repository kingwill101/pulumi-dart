// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryPolicyTracingConfigurationParentBasedSampling {
  /// Provides a master switch to respect a sampled bit in incoming traceparentID headers. Default is false.
  final pulumi.Input<bool?>? enabled;
  /// Specifies the sampling rate to use when the sampled bit is set in the incoming traceparentID header.
  final pulumi.Input<double?>? samplingRate;

  /// Creates a new [TelemetryPolicyTracingConfigurationParentBasedSampling].
  /// [enabled] Provides a master switch to respect a sampled bit in incoming traceparentID headers. Default is false.
  /// [samplingRate] Specifies the sampling rate to use when the sampled bit is set in the incoming traceparentID header.
  const TelemetryPolicyTracingConfigurationParentBasedSampling({
    this.enabled,
    this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'samplingRate': ?samplingRate,
    };
  }

  factory TelemetryPolicyTracingConfigurationParentBasedSampling.fromMap(Map<String, dynamic> map) {
    return TelemetryPolicyTracingConfigurationParentBasedSampling(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      samplingRate: (() { final guardedValue = map['samplingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
