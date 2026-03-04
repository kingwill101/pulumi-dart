// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_log_config_optional.dart';
import 'backend_service_log_config_optional_mode.dart';

/// The available logging options for the load balancer traffic served by this backend service.
class BackendServiceLogConfig {
  /// Denotes whether to enable logging for the load balancer traffic served by this backend service. The default value is false.
  final pulumi.Input<bool>? enable;

  /// Deprecated in favor of optionalMode. This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
  final pulumi.Input<BackendServiceLogConfigOptional>? optional;

  /// This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode" was set to CUSTOM. Contains a list of optional fields you want to include in the logs. For example: serverInstance, serverGkeDetails.cluster, serverGkeDetails.pod.podNamespace
  final pulumi.Input<List<String>>? optionalFields;

  /// This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
  final pulumi.Input<BackendServiceLogConfigOptionalMode>? optionalMode;

  /// This field can only be specified if logging is enabled for this backend service. The value of the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0.
  final pulumi.Input<double>? sampleRate;

  /// Creates a new [BackendServiceLogConfig].
  /// [enable] Denotes whether to enable logging for the load balancer traffic served by this backend service. The default value is false.
  /// [optional] Deprecated in favor of optionalMode. This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
  /// [optionalFields] This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode" was set to CUSTOM. Contains a list of optional fields you want to include in the logs. For example: serverInstance, serverGkeDetails.cluster, serverGkeDetails.pod.podNamespace
  /// [optionalMode] This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
  /// [sampleRate] This field can only be specified if logging is enabled for this backend service. The value of the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0.
  BackendServiceLogConfig({
    this.enable,
    this.optional,
    this.optionalFields,
    this.optionalMode,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'optional':
          ?pulumi.Input.mapOptionalInputValue<
            BackendServiceLogConfigOptional,
            String
          >(optional, (value) => value.wireValue),
      'optionalFields': ?optionalFields,
      'optionalMode':
          ?pulumi.Input.mapOptionalInputValue<
            BackendServiceLogConfigOptionalMode,
            String
          >(optionalMode, (value) => value.wireValue),
      'sampleRate': ?sampleRate,
    };
  }

  factory BackendServiceLogConfig.fromMap(Map<String, dynamic> map) {
    return BackendServiceLogConfig(
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      optional: (() {
        final guardedValue = map['optional'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackendServiceLogConfigOptional.fromValue(guardedValue as String),
        );
      })(),
      optionalFields: (() {
        final guardedValue = map['optionalFields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      optionalMode: (() {
        final guardedValue = map['optionalMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackendServiceLogConfigOptionalMode.fromValue(guardedValue as String),
        );
      })(),
      sampleRate: (() {
        final guardedValue = map['sampleRate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
