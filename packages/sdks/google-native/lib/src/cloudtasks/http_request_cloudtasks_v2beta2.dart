// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_request_http_method_cloudtasks_v2beta2.dart';
import 'oauth_token_cloudtasks_v2beta2.dart';
import 'oidc_token_cloudtasks_v2beta2.dart';

/// HTTP request. The task will be pushed to the worker as an HTTP request. An HTTP request embodies a url, an http method, headers, body and authorization for the http task.
class HttpRequestCloudtasksV2beta2 {
  /// HTTP request body. A request body is allowed only if the HTTP method is POST, PUT, or PATCH. It is an error to set body on a task with an incompatible HttpMethod.
  final pulumi.Input<String>? body;
  /// HTTP request headers. This map contains the header field names and values. Headers can be set when running the task is created or task is created. These headers represent a subset of the headers that will accompany the task's HTTP request. Some HTTP request headers will be ignored or replaced. A partial list of headers that will be ignored or replaced is: * Any header that is prefixed with "X-CloudTasks-" will be treated as service header. Service headers define properties of the task and are predefined in CloudTask. * Host: This will be computed by Cloud Tasks and derived from HttpRequest.url. * Content-Length: This will be computed by Cloud Tasks. * User-Agent: This will be set to `"Google-Cloud-Tasks"`. * `X-Google-*`: Google use only. * `X-AppEngine-*`: Google use only. `Content-Type` won't be set by Cloud Tasks. You can explicitly set `Content-Type` to a media type when the task is created. For example, `Content-Type` can be set to `"application/octet-stream"` or `"application/json"`. Headers which can have multiple values (according to RFC2616) can be specified using comma-separated values. The size of the headers must be less than 80KB.
  final pulumi.Input<Map<String, String>>? headers;
  /// The HTTP method to use for the request. The default is POST.
  final pulumi.Input<HttpRequestHttpMethodCloudtasksV2beta2>? httpMethod;
  /// If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
  final pulumi.Input<OAuthTokenCloudtasksV2beta2>? oauthToken;
  /// If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
  final pulumi.Input<OidcTokenCloudtasksV2beta2>? oidcToken;
  /// The full url path that the request will be sent to. This string must begin with either "http://" or "https://". Some examples are: `http://acme.com` and `https://acme.com/sales:8080`. Cloud Tasks will encode some characters for safety and compatibility. The maximum allowed URL length is 2083 characters after encoding. The `Location` header response from a redirect response [`300` - `399`] may be followed. The redirect is not counted as a separate attempt.
  final pulumi.Input<String> url;

  /// Creates a new [HttpRequestCloudtasksV2beta2].
  /// [body] HTTP request body. A request body is allowed only if the HTTP method is POST, PUT, or PATCH. It is an error to set body on a task with an incompatible HttpMethod.
  /// [headers] HTTP request headers. This map contains the header field names and values. Headers can be set when running the task is created or task is created. These headers represent a subset of the headers that will accompany the task's HTTP request. Some HTTP request headers will be ignored or replaced. A partial list of headers that will be ignored or replaced is: * Any header that is prefixed with "X-CloudTasks-" will be treated as service header. Service headers define properties of the task and are predefined in CloudTask. * Host: This will be computed by Cloud Tasks and derived from HttpRequest.url. * Content-Length: This will be computed by Cloud Tasks. * User-Agent: This will be set to `"Google-Cloud-Tasks"`. * `X-Google-*`: Google use only. * `X-AppEngine-*`: Google use only. `Content-Type` won't be set by Cloud Tasks. You can explicitly set `Content-Type` to a media type when the task is created. For example, `Content-Type` can be set to `"application/octet-stream"` or `"application/json"`. Headers which can have multiple values (according to RFC2616) can be specified using comma-separated values. The size of the headers must be less than 80KB.
  /// [httpMethod] The HTTP method to use for the request. The default is POST.
  /// [oauthToken] If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
  /// [oidcToken] If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
  /// [url] The full url path that the request will be sent to. This string must begin with either "http://" or "https://". Some examples are: `http://acme.com` and `https://acme.com/sales:8080`. Cloud Tasks will encode some characters for safety and compatibility. The maximum allowed URL length is 2083 characters after encoding. The `Location` header response from a redirect response [`300` - `399`] may be followed. The redirect is not counted as a separate attempt.
  const HttpRequestCloudtasksV2beta2({
    this.body,
    this.headers,
    this.httpMethod,
    this.oauthToken,
    this.oidcToken,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'headers': ?headers,
      'httpMethod': ?pulumi.Input.mapOptionalInputValue<HttpRequestHttpMethodCloudtasksV2beta2, String>(httpMethod, (value) => value.wireValue),
      'oauthToken': ?pulumi.Input.mapOptionalInputValue<OAuthTokenCloudtasksV2beta2, Map<String, dynamic>>(oauthToken, (value) => value.toMap()),
      'oidcToken': ?pulumi.Input.mapOptionalInputValue<OidcTokenCloudtasksV2beta2, Map<String, dynamic>>(oidcToken, (value) => value.toMap()),
      'url': url,
    };
  }

  factory HttpRequestCloudtasksV2beta2.fromMap(Map<String, dynamic> map) {
    return HttpRequestCloudtasksV2beta2(
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRequestHttpMethodCloudtasksV2beta2.fromValue(guardedValue as String)); })(),
      oauthToken: (() { final guardedValue = map['oauthToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OAuthTokenCloudtasksV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidcToken: (() { final guardedValue = map['oidcToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OidcTokenCloudtasksV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
