// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The available logging options for the load balancer traffic served by this backend service.
class BackendServiceLogConfigResponseComputeV1 {
  /// Denotes whether to enable logging for the load balancer traffic served by this backend service. The default value is false.
  final pulumi.Input<bool> enable;
  /// This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode" was set to CUSTOM. Contains a list of optional fields you want to include in the logs. For example: serverInstance, serverGkeDetails.cluster, serverGkeDetails.pod.podNamespace
  final pulumi.Input<List<String>> optionalFields;
  /// This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
  final pulumi.Input<String> optionalMode;
  /// This field can only be specified if logging is enabled for this backend service. The value of the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0.
  final pulumi.Input<double> sampleRate;

  /// Creates a new [BackendServiceLogConfigResponseComputeV1].
  /// [enable] Denotes whether to enable logging for the load balancer traffic served by this backend service. The default value is false.
  /// [optionalFields] This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode" was set to CUSTOM. Contains a list of optional fields you want to include in the logs. For example: serverInstance, serverGkeDetails.cluster, serverGkeDetails.pod.podNamespace
  /// [optionalMode] This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
  /// [sampleRate] This field can only be specified if logging is enabled for this backend service. The value of the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0.
  const BackendServiceLogConfigResponseComputeV1({
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

  factory BackendServiceLogConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return BackendServiceLogConfigResponseComputeV1(
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      optionalFields: pulumi.Input.fromValue((map['optionalFields'] as List).cast<String>()),
      optionalMode: pulumi.Input.fromValue(map['optionalMode'] as String),
      sampleRate: pulumi.Input.fromValue(map['sampleRate'] as double),
    );
  }
}

