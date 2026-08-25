// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_log_config_request_header.dart';
import 'get_region_backend_service_log_config_response_header.dart';

class GetRegionBackendServiceLogConfig {
  /// Whether to enable logging for the load balancer traffic served by this backend service.
  final pulumi.Input<bool> enable;
  /// Specifies the fields to include in logging. This field can only be specified if logging is enabled for this backend service.
  final pulumi.Input<List<String>> optionalFields;
  /// Specifies the optional logging mode for the load balancer traffic.
  /// Supported values: INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM. Possible values: ["INCLUDE_ALL_OPTIONAL", "EXCLUDE_ALL_OPTIONAL", "CUSTOM"]
  final pulumi.Input<String> optionalMode;
  /// This field can only be specified if logging is enabled for this backend service and if the BackendService protocol is one of HTTP, HTTPS, HTTP2 and GRPC. Contains a list of request headers to be logged.
  final pulumi.Input<List<GetRegionBackendServiceLogConfigRequestHeader>> requestHeaders;
  /// This field can only be specified if logging is enabled for this backend service and if the BackendService protocol is one of HTTP, HTTPS, HTTP2 and GRPC. Contains a list of response headers to be logged.
  final pulumi.Input<List<GetRegionBackendServiceLogConfigResponseHeader>> responseHeaders;
  /// This field can only be specified if logging is enabled for this backend service. The value of
  /// the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer
  /// where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported.
  /// The default value is 1.0.
  final pulumi.Input<double> sampleRate;

  /// Creates a new [GetRegionBackendServiceLogConfig].
  /// [enable] Whether to enable logging for the load balancer traffic served by this backend service.
  /// [optionalFields] Specifies the fields to include in logging. This field can only be specified if logging is enabled for this backend service.
  /// [optionalMode] Specifies the optional logging mode for the load balancer traffic.
  /// [requestHeaders] This field can only be specified if logging is enabled for this backend service and if the BackendService protocol is one of HTTP, HTTPS, HTTP2 and GRPC. Contains a list of request headers to be logged.
  /// [responseHeaders] This field can only be specified if logging is enabled for this backend service and if the BackendService protocol is one of HTTP, HTTPS, HTTP2 and GRPC. Contains a list of response headers to be logged.
  /// [sampleRate] This field can only be specified if logging is enabled for this backend service. The value of
  const GetRegionBackendServiceLogConfig({
    required this.enable,
    required this.optionalFields,
    required this.optionalMode,
    required this.requestHeaders,
    required this.responseHeaders,
    required this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
      'optionalFields': optionalFields,
      'optionalMode': optionalMode,
      'requestHeaders': pulumi.Input.mapInputValue<List<GetRegionBackendServiceLogConfigRequestHeader>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<GetRegionBackendServiceLogConfigRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeaders': pulumi.Input.mapInputValue<List<GetRegionBackendServiceLogConfigResponseHeader>, List<Map<String, dynamic>>>(responseHeaders, (value) => pulumi.Input.encodeList<GetRegionBackendServiceLogConfigResponseHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sampleRate': sampleRate,
    };
  }

  factory GetRegionBackendServiceLogConfig.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceLogConfig(
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      optionalFields: pulumi.Input.fromValue((map['optionalFields'] as List).cast<String>()),
      optionalMode: pulumi.Input.fromValue(map['optionalMode'] as String),
      requestHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceLogConfigRequestHeader>(map['requestHeaders']!, (value) => GetRegionBackendServiceLogConfigRequestHeader.fromMap((value as Map).cast<String, dynamic>()))),
      responseHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceLogConfigResponseHeader>(map['responseHeaders']!, (value) => GetRegionBackendServiceLogConfigResponseHeader.fromMap((value as Map).cast<String, dynamic>()))),
      sampleRate: pulumi.Input.fromValue((map['sampleRate'] as num).toDouble()),
    );
  }
}
