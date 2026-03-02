// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionBackendServiceLogConfig {
  /// Whether to enable logging for the load balancer traffic served by this backend service.
  final pulumi.Input<bool>? enable;
  /// Specifies the fields to include in logging. This field can only be specified if logging is enabled for this backend service.
  final pulumi.Input<List<String>>? optionalFields;
  /// Specifies the optional logging mode for the load balancer traffic.
  /// Supported values: INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM.
  /// Possible values are: `INCLUDE_ALL_OPTIONAL`, `EXCLUDE_ALL_OPTIONAL`, `CUSTOM`.
  final pulumi.Input<String>? optionalMode;
  /// This field can only be specified if logging is enabled for this backend service. The value of
  /// the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer
  /// where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported.
  /// The default value is 1.0.
  final pulumi.Input<double>? sampleRate;

  /// Creates a new [RegionBackendServiceLogConfig].
  /// [enable] Whether to enable logging for the load balancer traffic served by this backend service.
  /// [optionalFields] Specifies the fields to include in logging. This field can only be specified if logging is enabled for this backend service.
  /// [optionalMode] Specifies the optional logging mode for the load balancer traffic.
  /// [sampleRate] This field can only be specified if logging is enabled for this backend service. The value of
  RegionBackendServiceLogConfig({
    this.enable,
    this.optionalFields,
    this.optionalMode,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'optionalFields': ?optionalFields,
      'optionalMode': ?optionalMode,
      'sampleRate': ?sampleRate,
    };
  }

  factory RegionBackendServiceLogConfig.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceLogConfig(
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      optionalFields: map['optionalFields'] == null ? null : ((map['optionalFields']! as List).cast<String>()).input(),
      optionalMode: map['optionalMode'] == null ? null : (map['optionalMode']! as String).input(),
      sampleRate: map['sampleRate'] == null ? null : (map['sampleRate']! as double).input(),
    );
  }
}

