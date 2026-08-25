// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_log_config_request_header.dart';
import 'backend_service_log_config_response_header.dart';

class BackendServiceLogConfig {
  /// Whether to enable logging for the load balancer traffic served by this backend service.
  final pulumi.Input<bool?>? enable;
  /// This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode"
  /// was set to CUSTOM. Contains a list of optional fields you want to include in the logs.
  /// For example: serverInstance, serverGkeDetails.cluster, serverGkeDetails.pod.podNamespace
  /// For example: orca_load_report, tls.protocol
  final pulumi.Input<List<String>?>? optionalFields;
  /// Specifies the optional logging mode for the load balancer traffic.
  /// Supported values: INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM.
  /// Possible values are: `INCLUDE_ALL_OPTIONAL`, `EXCLUDE_ALL_OPTIONAL`, `CUSTOM`.
  final pulumi.Input<String?>? optionalMode;
  /// This field can only be specified if logging is enabled for this backend service and if the BackendService protocol is one of HTTP, HTTPS, HTTP2 and GRPC. Contains a list of request headers to be logged.
  /// Structure is documented below.
  final pulumi.Input<List<BackendServiceLogConfigRequestHeader>?>? requestHeaders;
  /// This field can only be specified if logging is enabled for this backend service and if the BackendService protocol is one of HTTP, HTTPS, HTTP2 and GRPC. Contains a list of response headers to be logged.
  /// Structure is documented below.
  final pulumi.Input<List<BackendServiceLogConfigResponseHeader>?>? responseHeaders;
  /// This field can only be specified if logging is enabled for this backend service. The value of
  /// the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer
  /// where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported.
  /// The default value is 1.0.
  final pulumi.Input<double?>? sampleRate;

  /// Creates a new [BackendServiceLogConfig].
  /// [enable] Whether to enable logging for the load balancer traffic served by this backend service.
  /// [optionalFields] This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode"
  /// [optionalMode] Specifies the optional logging mode for the load balancer traffic.
  /// [requestHeaders] This field can only be specified if logging is enabled for this backend service and if the BackendService protocol is one of HTTP, HTTPS, HTTP2 and GRPC. Contains a list of request headers to be logged.
  /// [responseHeaders] This field can only be specified if logging is enabled for this backend service and if the BackendService protocol is one of HTTP, HTTPS, HTTP2 and GRPC. Contains a list of response headers to be logged.
  /// [sampleRate] This field can only be specified if logging is enabled for this backend service. The value of
  const BackendServiceLogConfig({
    this.enable,
    this.optionalFields,
    this.optionalMode,
    this.requestHeaders,
    this.responseHeaders,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'optionalFields': ?optionalFields,
      'optionalMode': ?optionalMode,
      'requestHeaders': ?pulumi.Input.mapOptionalInputValue<List<BackendServiceLogConfigRequestHeader>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<BackendServiceLogConfigRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeaders': ?pulumi.Input.mapOptionalInputValue<List<BackendServiceLogConfigResponseHeader>, List<Map<String, dynamic>>>(responseHeaders, (value) => pulumi.Input.encodeList<BackendServiceLogConfigResponseHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sampleRate': ?sampleRate,
    };
  }

  factory BackendServiceLogConfig.fromMap(Map<String, dynamic> map) {
    return BackendServiceLogConfig(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      optionalFields: (() { final guardedValue = map['optionalFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      optionalMode: (() { final guardedValue = map['optionalMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestHeaders: (() { final guardedValue = map['requestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendServiceLogConfigRequestHeader>(guardedValue, (value) => BackendServiceLogConfigRequestHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      responseHeaders: (() { final guardedValue = map['responseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendServiceLogConfigResponseHeader>(guardedValue, (value) => BackendServiceLogConfigResponseHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sampleRate: (() { final guardedValue = map['sampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
