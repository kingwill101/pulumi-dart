// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceLogConfig {
  /// Whether to enable logging for the load balancer traffic served by this backend service.
  final pulumi.Input<bool> enable;
  /// This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode"
  /// was set to CUSTOM. Contains a list of optional fields you want to include in the logs.
  /// For example: serverInstance, serverGkeDetails.cluster, serverGkeDetails.pod.podNamespace
  /// For example: orca_load_report, tls.protocol
  final pulumi.Input<List<String>> optionalFields;
  /// Specifies the optional logging mode for the load balancer traffic.
  /// Supported values: INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM. Possible values: ["INCLUDE_ALL_OPTIONAL", "EXCLUDE_ALL_OPTIONAL", "CUSTOM"]
  final pulumi.Input<String> optionalMode;
  /// This field can only be specified if logging is enabled for this backend service. The value of
  /// the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer
  /// where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported.
  /// The default value is 1.0.
  final pulumi.Input<double> sampleRate;

  /// Creates a new [GetBackendServiceLogConfig].
  /// [enable] Whether to enable logging for the load balancer traffic served by this backend service.
  /// [optionalFields] This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode"
  /// [optionalMode] Specifies the optional logging mode for the load balancer traffic.
  /// [sampleRate] This field can only be specified if logging is enabled for this backend service. The value of
  const GetBackendServiceLogConfig({
    required this.enable,
    required this.optionalFields,
    required this.optionalMode,
    required this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
      'optionalFields': optionalFields,
      'optionalMode': optionalMode,
      'sampleRate': sampleRate,
    };
  }

  factory GetBackendServiceLogConfig.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceLogConfig(
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      optionalFields: pulumi.Input.fromValue((map['optionalFields'] as List).cast<String>()),
      optionalMode: pulumi.Input.fromValue(map['optionalMode'] as String),
      sampleRate: pulumi.Input.fromValue(map['sampleRate'] as double),
    );
  }
}

