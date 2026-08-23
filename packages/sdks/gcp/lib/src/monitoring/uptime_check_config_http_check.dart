// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uptime_check_config_http_check_accepted_response_status_code.dart';
import 'uptime_check_config_http_check_auth_info.dart';
import 'uptime_check_config_http_check_ping_config.dart';
import 'uptime_check_config_http_check_service_agent_authentication.dart';

class UptimeCheckConfigHttpCheck {
  /// If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299.
  /// Structure is documented below.
  final pulumi.Input<List<UptimeCheckConfigHttpCheckAcceptedResponseStatusCode>>? acceptedResponseStatusCodes;
  /// The authentication information using username and password. Optional when creating an HTTP check; defaults to empty. Do not use with other authentication fields.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigHttpCheckAuthInfo>? authInfo;
  /// The request body associated with the HTTP POST request. If `contentType` is `URL_ENCODED`, the body passed in must be URL-encoded. Users can provide a `Content-Length` header via the `headers` field or the API will do so. If the `requestMethod` is `GET` and `body` is not empty, the API will return an error. The maximum byte size is 1 megabyte. Note - As with all bytes fields JSON representations are base64 encoded. e.g. `foo=bar` in URL-encoded form is `foo%3Dbar` and in base64 encoding is `Zm9vJTI1M0RiYXI=`.
  final pulumi.Input<String>? body;
  /// The content type to use for the check.
  /// Possible values are: `TYPE_UNSPECIFIED`, `URL_ENCODED`, `USER_PROVIDED`.
  final pulumi.Input<String>? contentType;
  /// A user provided content type header to use for the check. The invalid configurations outlined in the `contentType` field apply to customContentType`, as well as the following 1. `contentType` is `URL_ENCODED` and `customContentType` is set. 2. `contentType` is `USER_PROVIDED` and `customContentType` is not set.
  final pulumi.Input<String>? customContentType;
  /// The list of headers to send as part of the uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described in [RFC 2616 (page 31)](https://www.w3.org/Protocols/rfc2616/rfc2616.txt). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.
  final pulumi.Input<Map<String, String>>? headers;
  /// Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if `maskHeaders` is set to `true` then the headers will be obscured with `******`.
  final pulumi.Input<bool>? maskHeaders;
  /// The path to the page to run the check against. Will be combined with the host (specified within the MonitoredResource) and port to construct the full URL. If the provided path does not begin with `/`, a `/` will be prepended automatically. Optional (defaults to `/`).
  final pulumi.Input<String>? path;
  /// Contains information needed to add pings to an HTTP check.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigHttpCheckPingConfig>? pingConfig;
  /// The port to the page to run the check against. Will be combined with `host` (specified within the `monitoredResource`) and path to construct the full URL. Optional (defaults to 80 without SSL, or 443 with SSL).
  final pulumi.Input<int>? port;
  /// The HTTP request method to use for the check. If set to `METHOD_UNSPECIFIED` then `requestMethod` defaults to `GET`.
  /// Default value is `GET`.
  /// Possible values are: `METHOD_UNSPECIFIED`, `GET`, `POST`.
  final pulumi.Input<String>? requestMethod;
  /// The authentication information using the Monitoring Service Agent. Optional when creating an HTTPS check; defaults to empty. Do not use with other authentication fields.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigHttpCheckServiceAgentAuthentication>? serviceAgentAuthentication;
  /// If true, use HTTPS instead of HTTP to run the check.
  final pulumi.Input<bool>? useSsl;
  /// Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where `monitoredResource` is set to `uptimeUrl`. If `useSsl` is `false`, setting `validateSsl` to `true` has no effect.
  final pulumi.Input<bool>? validateSsl;

  /// Creates a new [UptimeCheckConfigHttpCheck].
  /// [acceptedResponseStatusCodes] If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299.
  /// [authInfo] The authentication information using username and password. Optional when creating an HTTP check; defaults to empty. Do not use with other authentication fields.
  /// [body] The request body associated with the HTTP POST request. If `contentType` is `URL_ENCODED`, the body passed in must be URL-encoded. Users can provide a `Content-Length` header via the `headers` field or the API will do so. If the `requestMethod` is `GET` and `body` is not empty, the API will return an error. The maximum byte size is 1 megabyte. Note - As with all bytes fields JSON representations are base64 encoded. e.g. `foo=bar` in URL-encoded form is `foo%3Dbar` and in base64 encoding is `Zm9vJTI1M0RiYXI=`.
  /// [contentType] The content type to use for the check.
  /// [customContentType] A user provided content type header to use for the check. The invalid configurations outlined in the `contentType` field apply to customContentType`, as well as the following 1. `contentType` is `URL_ENCODED` and `customContentType` is set. 2. `contentType` is `USER_PROVIDED` and `customContentType` is not set.
  /// [headers] The list of headers to send as part of the uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described in [RFC 2616 (page 31)](https://www.w3.org/Protocols/rfc2616/rfc2616.txt). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.
  /// [maskHeaders] Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if `maskHeaders` is set to `true` then the headers will be obscured with `******`.
  /// [path] The path to the page to run the check against. Will be combined with the host (specified within the MonitoredResource) and port to construct the full URL. If the provided path does not begin with `/`, a `/` will be prepended automatically. Optional (defaults to `/`).
  /// [pingConfig] Contains information needed to add pings to an HTTP check.
  /// [port] The port to the page to run the check against. Will be combined with `host` (specified within the `monitoredResource`) and path to construct the full URL. Optional (defaults to 80 without SSL, or 443 with SSL).
  /// [requestMethod] The HTTP request method to use for the check. If set to `METHOD_UNSPECIFIED` then `requestMethod` defaults to `GET`.
  /// [serviceAgentAuthentication] The authentication information using the Monitoring Service Agent. Optional when creating an HTTPS check; defaults to empty. Do not use with other authentication fields.
  /// [useSsl] If true, use HTTPS instead of HTTP to run the check.
  /// [validateSsl] Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where `monitoredResource` is set to `uptimeUrl`. If `useSsl` is `false`, setting `validateSsl` to `true` has no effect.
  const UptimeCheckConfigHttpCheck({
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
      'acceptedResponseStatusCodes': ?pulumi.Input.mapOptionalInputValue<List<UptimeCheckConfigHttpCheckAcceptedResponseStatusCode>, List<Map<String, dynamic>>>(acceptedResponseStatusCodes, (value) => pulumi.Input.encodeList<UptimeCheckConfigHttpCheckAcceptedResponseStatusCode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authInfo': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigHttpCheckAuthInfo, Map<String, dynamic>>(authInfo, (value) => value.toMap()),
      'body': ?body,
      'contentType': ?contentType,
      'customContentType': ?customContentType,
      'headers': ?headers,
      'maskHeaders': ?maskHeaders,
      'path': ?path,
      'pingConfig': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigHttpCheckPingConfig, Map<String, dynamic>>(pingConfig, (value) => value.toMap()),
      'port': ?port,
      'requestMethod': ?requestMethod,
      'serviceAgentAuthentication': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigHttpCheckServiceAgentAuthentication, Map<String, dynamic>>(serviceAgentAuthentication, (value) => value.toMap()),
      'useSsl': ?useSsl,
      'validateSsl': ?validateSsl,
    };
  }

  factory UptimeCheckConfigHttpCheck.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigHttpCheck(
      acceptedResponseStatusCodes: (() { final guardedValue = map['acceptedResponseStatusCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UptimeCheckConfigHttpCheckAcceptedResponseStatusCode>(guardedValue, (value) => UptimeCheckConfigHttpCheckAcceptedResponseStatusCode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authInfo: (() { final guardedValue = map['authInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UptimeCheckConfigHttpCheckAuthInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customContentType: (() { final guardedValue = map['customContentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      maskHeaders: (() { final guardedValue = map['maskHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pingConfig: (() { final guardedValue = map['pingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UptimeCheckConfigHttpCheckPingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      requestMethod: (() { final guardedValue = map['requestMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAgentAuthentication: (() { final guardedValue = map['serviceAgentAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UptimeCheckConfigHttpCheckServiceAgentAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useSsl: (() { final guardedValue = map['useSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validateSsl: (() { final guardedValue = map['validateSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
