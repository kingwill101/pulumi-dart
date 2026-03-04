// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheServiceLogConfig {
  /// Specifies whether to enable logging for traffic served by this service.
  final pulumi.Input<bool>? enable;

  /// Configures the sampling rate of requests, where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0, and the value of the field must be in [0, 1].
  /// This field can only be specified if logging is enabled for this service.
  final pulumi.Input<double>? sampleRate;

  /// Creates a new [EdgeCacheServiceLogConfig].
  /// [enable] Specifies whether to enable logging for traffic served by this service.
  /// [sampleRate] Configures the sampling rate of requests, where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0, and the value of the field must be in [0, 1].
  EdgeCacheServiceLogConfig({this.enable, this.sampleRate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enable': ?enable, 'sampleRate': ?sampleRate};
  }

  factory EdgeCacheServiceLogConfig.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceLogConfig(
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sampleRate: (() {
        final guardedValue = map['sampleRate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
