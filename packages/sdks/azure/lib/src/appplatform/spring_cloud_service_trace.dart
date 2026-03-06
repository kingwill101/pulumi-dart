// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudServiceTrace {
  /// The connection string used for Application Insights.
  final pulumi.Input<String>? connectionString;
  /// The sampling rate of Application Insights Agent. Must be between `0.0` and `100.0`. Defaults to `10.0`.
  final pulumi.Input<double>? sampleRate;

  /// Creates a new [SpringCloudServiceTrace].
  /// [connectionString] The connection string used for Application Insights.
  /// [sampleRate] The sampling rate of Application Insights Agent. Must be between `0.0` and `100.0`. Defaults to `10.0`.
  const SpringCloudServiceTrace({
    this.connectionString,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'sampleRate': ?sampleRate,
    };
  }

  factory SpringCloudServiceTrace.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceTrace(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleRate: (() { final guardedValue = map['sampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

