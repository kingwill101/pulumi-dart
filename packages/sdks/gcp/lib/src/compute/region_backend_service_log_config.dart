// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_log_config_request_header.dart';
import 'region_backend_service_log_config_response_header.dart';

class RegionBackendServiceLogConfig {
  /// Whether to enable logging for the load balancer traffic served by this backend service.
  final pulumi.Input<bool?>? enable;
  /// Specifies the fields to include in logging. This field can only be specified if logging is enabled for this backend service.
  final pulumi.Input<List<String>?>? optionalFields;
  /// Specifies the optional logging mode for the load balancer traffic.
  /// Supported values: INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM.
  /// Possible values are: `INCLUDE_ALL_OPTIONAL`, `EXCLUDE_ALL_OPTIONAL`, `CUSTOM`.
  final pulumi.Input<String?>? optionalMode;
  /// This field can only be specified if logging is enabled for this backend service and if the BackendService protocol is one of HTTP, HTTPS, HTTP2 and GRPC. Contains a list of request headers to be logged.
  /// Structure is documented below.
  final pulumi.Input<List<RegionBackendServiceLogConfigRequestHeader>?>? requestHeaders;
  /// This field can only be specified if logging is enabled for this backend service and if the BackendService protocol is one of HTTP, HTTPS, HTTP2 and GRPC. Contains a list of response headers to be logged.
  /// Structure is documented below.
  final pulumi.Input<List<RegionBackendServiceLogConfigResponseHeader>?>? responseHeaders;
  /// This field can only be specified if logging is enabled for this backend service. The value of
  /// the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer
  /// where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported.
  /// The default value is 1.0.
  final pulumi.Input<double?>? sampleRate;

  /// Creates a new [RegionBackendServiceLogConfig].
  /// [enable] Whether to enable logging for the load balancer traffic served by this backend service.
  /// [optionalFields] Specifies the fields to include in logging. This field can only be specified if logging is enabled for this backend service.
  /// [optionalMode] Specifies the optional logging mode for the load balancer traffic.
  /// [requestHeaders] This field can only be specified if logging is enabled for this backend service and if the BackendService protocol is one of HTTP, HTTPS, HTTP2 and GRPC. Contains a list of request headers to be logged.
  /// [responseHeaders] This field can only be specified if logging is enabled for this backend service and if the BackendService protocol is one of HTTP, HTTPS, HTTP2 and GRPC. Contains a list of response headers to be logged.
  /// [sampleRate] This field can only be specified if logging is enabled for this backend service. The value of
  const RegionBackendServiceLogConfig({
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
      'requestHeaders': ?pulumi.Input.mapOptionalInputValue<List<RegionBackendServiceLogConfigRequestHeader>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<RegionBackendServiceLogConfigRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeaders': ?pulumi.Input.mapOptionalInputValue<List<RegionBackendServiceLogConfigResponseHeader>, List<Map<String, dynamic>>>(responseHeaders, (value) => pulumi.Input.encodeList<RegionBackendServiceLogConfigResponseHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sampleRate': ?sampleRate,
    };
  }

  factory RegionBackendServiceLogConfig.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceLogConfig(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      optionalFields: (() { final guardedValue = map['optionalFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      optionalMode: (() { final guardedValue = map['optionalMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestHeaders: (() { final guardedValue = map['requestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionBackendServiceLogConfigRequestHeader>(guardedValue, (value) => RegionBackendServiceLogConfigRequestHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      responseHeaders: (() { final guardedValue = map['responseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionBackendServiceLogConfigResponseHeader>(guardedValue, (value) => RegionBackendServiceLogConfigResponseHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sampleRate: (() { final guardedValue = map['sampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
