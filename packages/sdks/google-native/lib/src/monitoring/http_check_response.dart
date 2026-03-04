// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_authentication_response.dart';
import 'ping_config_response.dart';
import 'response_status_code_response.dart';

/// Information involved in an HTTP/HTTPS Uptime check request.
class HttpCheckResponse {
  /// If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299.
  final pulumi.Input<List<ResponseStatusCodeResponse>>
  acceptedResponseStatusCodes;

  /// The authentication information. Optional when creating an HTTP check; defaults to empty.
  final pulumi.Input<BasicAuthenticationResponse> authInfo;

  /// The request body associated with the HTTP POST request. If content_type is URL_ENCODED, the body passed in must be URL-encoded. Users can provide a Content-Length header via the headers field or the API will do so. If the request_method is GET and body is not empty, the API will return an error. The maximum byte size is 1 megabyte.Note: If client libraries aren't used (which performs the conversion automatically) base64 encode your body data since the field is of bytes type.
  final pulumi.Input<String> body;

  /// The content type header to use for the check. The following configurations result in errors: 1. Content type is specified in both the headers field and the content_type field. 2. Request method is GET and content_type is not TYPE_UNSPECIFIED 3. Request method is POST and content_type is TYPE_UNSPECIFIED. 4. Request method is POST and a "Content-Type" header is provided via headers field. The content_type field should be used instead.
  final pulumi.Input<String> contentType;

  /// A user provided content type header to use for the check. The invalid configurations outlined in the content_type field apply to custom_content_type, as well as the following: 1. content_type is URL_ENCODED and custom_content_type is set. 2. content_type is USER_PROVIDED and custom_content_type is not set.
  final pulumi.Input<String> customContentType;

  /// The list of headers to send as part of the Uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described at https://www.w3.org/Protocols/rfc2616/rfc2616.txt (page 31). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.
  final pulumi.Input<Map<String, String>> headers;

  /// Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if mask_headers is set to true then the headers will be obscured with ******.
  final pulumi.Input<bool> maskHeaders;

  /// Optional (defaults to "/"). The path to the page against which to run the check. Will be combined with the host (specified within the monitored_resource) and port to construct the full URL. If the provided path does not begin with "/", a "/" will be prepended automatically.
  final pulumi.Input<String> path;

  /// Contains information needed to add pings to an HTTP check.
  final pulumi.Input<PingConfigResponse> pingConfig;

  /// Optional (defaults to 80 when use_ssl is false, and 443 when use_ssl is true). The TCP port on the HTTP server against which to run the check. Will be combined with host (specified within the monitored_resource) and path to construct the full URL.
  final pulumi.Input<int> port;

  /// The HTTP request method to use for the check. If set to METHOD_UNSPECIFIED then request_method defaults to GET.
  final pulumi.Input<String> requestMethod;

  /// If true, use HTTPS instead of HTTP to run the check.
  final pulumi.Input<bool> useSsl;

  /// Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where monitored_resource is set to uptime_url. If use_ssl is false, setting validate_ssl to true has no effect.
  final pulumi.Input<bool> validateSsl;

  /// Creates a new [HttpCheckResponse].
  /// [acceptedResponseStatusCodes] If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299.
  /// [authInfo] The authentication information. Optional when creating an HTTP check; defaults to empty.
  /// [body] The request body associated with the HTTP POST request. If content_type is URL_ENCODED, the body passed in must be URL-encoded. Users can provide a Content-Length header via the headers field or the API will do so. If the request_method is GET and body is not empty, the API will return an error. The maximum byte size is 1 megabyte.Note: If client libraries aren't used (which performs the conversion automatically) base64 encode your body data since the field is of bytes type.
  /// [contentType] The content type header to use for the check. The following configurations result in errors: 1. Content type is specified in both the headers field and the content_type field. 2. Request method is GET and content_type is not TYPE_UNSPECIFIED 3. Request method is POST and content_type is TYPE_UNSPECIFIED. 4. Request method is POST and a "Content-Type" header is provided via headers field. The content_type field should be used instead.
  /// [customContentType] A user provided content type header to use for the check. The invalid configurations outlined in the content_type field apply to custom_content_type, as well as the following: 1. content_type is URL_ENCODED and custom_content_type is set. 2. content_type is USER_PROVIDED and custom_content_type is not set.
  /// [headers] The list of headers to send as part of the Uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described at https://www.w3.org/Protocols/rfc2616/rfc2616.txt (page 31). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.
  /// [maskHeaders] Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if mask_headers is set to true then the headers will be obscured with ******.
  /// [path] Optional (defaults to "/"). The path to the page against which to run the check. Will be combined with the host (specified within the monitored_resource) and port to construct the full URL. If the provided path does not begin with "/", a "/" will be prepended automatically.
  /// [pingConfig] Contains information needed to add pings to an HTTP check.
  /// [port] Optional (defaults to 80 when use_ssl is false, and 443 when use_ssl is true). The TCP port on the HTTP server against which to run the check. Will be combined with host (specified within the monitored_resource) and path to construct the full URL.
  /// [requestMethod] The HTTP request method to use for the check. If set to METHOD_UNSPECIFIED then request_method defaults to GET.
  /// [useSsl] If true, use HTTPS instead of HTTP to run the check.
  /// [validateSsl] Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where monitored_resource is set to uptime_url. If use_ssl is false, setting validate_ssl to true has no effect.
  HttpCheckResponse({
    required this.acceptedResponseStatusCodes,
    required this.authInfo,
    required this.body,
    required this.contentType,
    required this.customContentType,
    required this.headers,
    required this.maskHeaders,
    required this.path,
    required this.pingConfig,
    required this.port,
    required this.requestMethod,
    required this.useSsl,
    required this.validateSsl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedResponseStatusCodes':
          pulumi.Input.mapInputValue<
            List<ResponseStatusCodeResponse>,
            List<Map<String, dynamic>>
          >(
            acceptedResponseStatusCodes,
            (value) =>
                pulumi.Input.encodeList<
                  ResponseStatusCodeResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'authInfo':
          pulumi.Input.mapInputValue<
            BasicAuthenticationResponse,
            Map<String, dynamic>
          >(authInfo, (value) => value.toMap()),
      'body': body,
      'contentType': contentType,
      'customContentType': customContentType,
      'headers': headers,
      'maskHeaders': maskHeaders,
      'path': path,
      'pingConfig':
          pulumi.Input.mapInputValue<PingConfigResponse, Map<String, dynamic>>(
            pingConfig,
            (value) => value.toMap(),
          ),
      'port': port,
      'requestMethod': requestMethod,
      'useSsl': useSsl,
      'validateSsl': validateSsl,
    };
  }

  factory HttpCheckResponse.fromMap(Map<String, dynamic> map) {
    return HttpCheckResponse(
      acceptedResponseStatusCodes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ResponseStatusCodeResponse>(
          map['acceptedResponseStatusCodes']!,
          (value) => ResponseStatusCodeResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      authInfo: pulumi.Input.fromValue(
        BasicAuthenticationResponse.fromMap(
          (map['authInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      body: pulumi.Input.fromValue(map['body'] as String),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      customContentType: pulumi.Input.fromValue(
        map['customContentType'] as String,
      ),
      headers: pulumi.Input.fromValue(
        (map['headers'] as Map).cast<String, String>(),
      ),
      maskHeaders: pulumi.Input.fromValue(map['maskHeaders'] as bool),
      path: pulumi.Input.fromValue(map['path'] as String),
      pingConfig: pulumi.Input.fromValue(
        PingConfigResponse.fromMap(
          (map['pingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      port: pulumi.Input.fromValue(map['port'] as int),
      requestMethod: pulumi.Input.fromValue(map['requestMethod'] as String),
      useSsl: pulumi.Input.fromValue(map['useSsl'] as bool),
      validateSsl: pulumi.Input.fromValue(map['validateSsl'] as bool),
    );
  }
}
