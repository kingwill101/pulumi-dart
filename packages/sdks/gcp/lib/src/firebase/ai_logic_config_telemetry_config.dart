// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiLogicConfigTelemetryConfig {
  /// The current monitoring mode used for this project.
  /// Possible values:
  /// NONE
  /// ALL
  final pulumi.Input<String>? mode;
  /// The percentage of requests to be sampled, expressed as a fraction
  /// in the range (0,1]. Note that the actual sampling rate may be lower than
  /// the specified value if the system is overloaded. Default is 1.0.
  final pulumi.Input<double>? samplingRate;

  /// Creates a new [AiLogicConfigTelemetryConfig].
  /// [mode] The current monitoring mode used for this project.
  /// [samplingRate] The percentage of requests to be sampled, expressed as a fraction
  AiLogicConfigTelemetryConfig({
    this.mode,
    this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'samplingRate': ?samplingRate,
    };
  }

  factory AiLogicConfigTelemetryConfig.fromMap(Map<String, dynamic> map) {
    return AiLogicConfigTelemetryConfig(
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      samplingRate: map['samplingRate'] == null ? null : (map['samplingRate']! as double).input(),
    );
  }
}

