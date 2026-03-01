// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uptime_check_config_http_check_accepted_response_status_code.dart';
import 'uptime_check_config_http_check_auth_info.dart';
import 'uptime_check_config_http_check_ping_config.dart';
import 'uptime_check_config_http_check_service_agent_authentication.dart';

class UptimeCheckConfigHttpCheck {
  /// If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299.
  /// Structure is documented below.
  final List<UptimeCheckConfigHttpCheckAcceptedResponseStatusCode>? acceptedResponseStatusCodes;
  /// The authentication information using username and password. Optional when creating an HTTP check; defaults to empty. Do not use with other authentication fields.
  /// Structure is documented below.
  final UptimeCheckConfigHttpCheckAuthInfo? authInfo;
  /// The request body associated with the HTTP POST request. If `content_type` is `URL_ENCODED`, the body passed in must be URL-encoded. Users can provide a `Content-Length` header via the `headers` field or the API will do so. If the `request_method` is `GET` and `body` is not empty, the API will return an error. The maximum byte size is 1 megabyte. Note - As with all bytes fields JSON representations are base64 encoded. e.g. `foo=bar` in URL-encoded form is `foo%3Dbar` and in base64 encoding is `Zm9vJTI1M0RiYXI=`.
  final String? body;
  /// The content type to use for the check.
  /// Possible values are: `TYPE_UNSPECIFIED`, `URL_ENCODED`, `USER_PROVIDED`.
  final String? contentType;
  /// A user provided content type header to use for the check. The invalid configurations outlined in the `content_type` field apply to custom_content_type`, as well as the following 1. `content_type` is `URL_ENCODED` and `custom_content_type` is set. 2. `content_type` is `USER_PROVIDED` and `custom_content_type` is not set.
  final String? customContentType;
  /// The list of headers to send as part of the uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described in [RFC 2616 (page 31)](https://www.w3.org/Protocols/rfc2616/rfc2616.txt). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.
  final Map<String, String>? headers;
  /// Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if `mask_headers` is set to `true` then the headers will be obscured with `******`.
  final bool? maskHeaders;
  /// The path to the page to run the check against. Will be combined with the host (specified within the MonitoredResource) and port to construct the full URL. If the provided path does not begin with `/`, a `/` will be prepended automatically. Optional (defaults to `/`).
  final String? path;
  /// Contains information needed to add pings to an HTTP check.
  /// Structure is documented below.
  final UptimeCheckConfigHttpCheckPingConfig? pingConfig;
  /// The port to the page to run the check against. Will be combined with `host` (specified within the `monitored_resource`) and path to construct the full URL. Optional (defaults to 80 without SSL, or 443 with SSL).
  final int? port;
  /// The HTTP request method to use for the check. If set to `METHOD_UNSPECIFIED` then `request_method` defaults to `GET`.
  /// Default value is `GET`.
  /// Possible values are: `METHOD_UNSPECIFIED`, `GET`, `POST`.
  final String? requestMethod;
  /// The authentication information using the Monitoring Service Agent. Optional when creating an HTTPS check; defaults to empty. Do not use with other authentication fields.
  /// Structure is documented below.
  final UptimeCheckConfigHttpCheckServiceAgentAuthentication? serviceAgentAuthentication;
  /// If true, use HTTPS instead of HTTP to run the check.
  final bool? useSsl;
  /// Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where `monitored_resource` is set to `uptime_url`. If `use_ssl` is `false`, setting `validate_ssl` to `true` has no effect.
  final bool? validateSsl;

  /// Creates a new [UptimeCheckConfigHttpCheck].
  /// [acceptedResponseStatusCodes] If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299.
  /// [authInfo] The authentication information using username and password. Optional when creating an HTTP check; defaults to empty. Do not use with other authentication fields.
  /// [body] The request body associated with the HTTP POST request. If `content_type` is `URL_ENCODED`, the body passed in must be URL-encoded. Users can provide a `Content-Length` header via the `headers` field or the API will do so. If the `request_method` is `GET` and `body` is not empty, the API will return an error. The maximum byte size is 1 megabyte. Note - As with all bytes fields JSON representations are base64 encoded. e.g. `foo=bar` in URL-encoded form is `foo%3Dbar` and in base64 encoding is `Zm9vJTI1M0RiYXI=`.
  /// [contentType] The content type to use for the check.
  /// [customContentType] A user provided content type header to use for the check. The invalid configurations outlined in the `content_type` field apply to custom_content_type`, as well as the following 1. `content_type` is `URL_ENCODED` and `custom_content_type` is set. 2. `content_type` is `USER_PROVIDED` and `custom_content_type` is not set.
  /// [headers] The list of headers to send as part of the uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described in [RFC 2616 (page 31)](https://www.w3.org/Protocols/rfc2616/rfc2616.txt). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.
  /// [maskHeaders] Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if `mask_headers` is set to `true` then the headers will be obscured with `******`.
  /// [path] The path to the page to run the check against. Will be combined with the host (specified within the MonitoredResource) and port to construct the full URL. If the provided path does not begin with `/`, a `/` will be prepended automatically. Optional (defaults to `/`).
  /// [pingConfig] Contains information needed to add pings to an HTTP check.
  /// [port] The port to the page to run the check against. Will be combined with `host` (specified within the `monitored_resource`) and path to construct the full URL. Optional (defaults to 80 without SSL, or 443 with SSL).
  /// [requestMethod] The HTTP request method to use for the check. If set to `METHOD_UNSPECIFIED` then `request_method` defaults to `GET`.
  /// [serviceAgentAuthentication] The authentication information using the Monitoring Service Agent. Optional when creating an HTTPS check; defaults to empty. Do not use with other authentication fields.
  /// [useSsl] If true, use HTTPS instead of HTTP to run the check.
  /// [validateSsl] Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where `monitored_resource` is set to `uptime_url`. If `use_ssl` is `false`, setting `validate_ssl` to `true` has no effect.
  UptimeCheckConfigHttpCheck({
    this.acceptedResponseStatusCodes,
    this.authInfo,
    this.body,
    this.contentType,
    this.customContentType,
    this.headers,
    this.maskHeaders,
    this.path,
    this.pingConfig,
    this.port,
    this.requestMethod,
    this.serviceAgentAuthentication,
    this.useSsl,
    this.validateSsl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedResponseStatusCodes': ?acceptedResponseStatusCodes == null ? null : pulumi.Input.encodeList<UptimeCheckConfigHttpCheckAcceptedResponseStatusCode, Map<String, dynamic>>(acceptedResponseStatusCodes!, (value) => value.toMap()),
      'authInfo': ?authInfo == null ? null : authInfo!.toMap(),
      'body': ?body,
      'contentType': ?contentType,
      'customContentType': ?customContentType,
      'headers': ?headers,
      'maskHeaders': ?maskHeaders,
      'path': ?path,
      'pingConfig': ?pingConfig == null ? null : pingConfig!.toMap(),
      'port': ?port,
      'requestMethod': ?requestMethod,
      'serviceAgentAuthentication': ?serviceAgentAuthentication == null ? null : serviceAgentAuthentication!.toMap(),
      'useSsl': ?useSsl,
      'validateSsl': ?validateSsl,
    };
  }

  factory UptimeCheckConfigHttpCheck.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigHttpCheck(
      acceptedResponseStatusCodes: map['acceptedResponseStatusCodes'] == null ? null : pulumi.Input.decodeList<UptimeCheckConfigHttpCheckAcceptedResponseStatusCode>(map['acceptedResponseStatusCodes'], (value) => UptimeCheckConfigHttpCheckAcceptedResponseStatusCode.fromMap((value as Map).cast<String, dynamic>())),
      authInfo: map['authInfo'] == null ? null : UptimeCheckConfigHttpCheckAuthInfo.fromMap((map['authInfo'] as Map).cast<String, dynamic>()),
      body: map['body'] == null ? null : map['body'] as String,
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      customContentType: map['customContentType'] == null ? null : map['customContentType'] as String,
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, String>(),
      maskHeaders: map['maskHeaders'] == null ? null : map['maskHeaders'] as bool,
      path: map['path'] == null ? null : map['path'] as String,
      pingConfig: map['pingConfig'] == null ? null : UptimeCheckConfigHttpCheckPingConfig.fromMap((map['pingConfig'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
      requestMethod: map['requestMethod'] == null ? null : map['requestMethod'] as String,
      serviceAgentAuthentication: map['serviceAgentAuthentication'] == null ? null : UptimeCheckConfigHttpCheckServiceAgentAuthentication.fromMap((map['serviceAgentAuthentication'] as Map).cast<String, dynamic>()),
      useSsl: map['useSsl'] == null ? null : map['useSsl'] as bool,
      validateSsl: map['validateSsl'] == null ? null : map['validateSsl'] as bool,
    );
  }
}

