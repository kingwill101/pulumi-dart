// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_override.dart';
import 'http_target_http_method.dart';
import 'oauth_token.dart';
import 'oidc_token.dart';
import 'uri_override.dart';

/// HTTP target. When specified as a Queue, all the tasks with [HttpRequest] will be overridden according to the target.
class HttpTarget {
  /// HTTP target headers. This map contains the header field names and values. Headers will be set when running the CreateTask and/or BufferTask. These headers represent a subset of the headers that will be configured for the task's HTTP request. Some HTTP request headers will be ignored or replaced. A partial list of headers that will be ignored or replaced is: * Several predefined headers, prefixed with "X-CloudTasks-", can be used to define properties of the task. * Host: This will be computed by Cloud Tasks and derived from HttpRequest.url. * Content-Length: This will be computed by Cloud Tasks. `Content-Type` won't be set by Cloud Tasks. You can explicitly set `Content-Type` to a media type when the task is created. For example,`Content-Type` can be set to `"application/octet-stream"` or `"application/json"`. The default value is set to "application/json"`. * User-Agent: This will be set to `"Google-Cloud-Tasks"`. Headers which can have multiple values (according to RFC2616) can be specified using comma-separated values. The size of the headers must be less than 80KB. Queue-level headers to override headers of all the tasks in the queue.
  final pulumi.Input<List<HeaderOverride>>? headerOverrides;
  /// The HTTP method to use for the request. When specified, it overrides HttpRequest for the task. Note that if the value is set to HttpMethod the HttpRequest of the task will be ignored at execution time.
  final pulumi.Input<HttpTargetHttpMethod>? httpMethod;
  /// If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) will be generated and attached as the `Authorization` header in the HTTP request. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
  final pulumi.Input<OAuthToken>? oauthToken;
  /// If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
  final pulumi.Input<OidcToken>? oidcToken;
  /// URI override. When specified, overrides the execution URI for all the tasks in the queue.
  final pulumi.Input<UriOverride>? uriOverride;

  /// Creates a new [HttpTarget].
  /// [headerOverrides] HTTP target headers. This map contains the header field names and values. Headers will be set when running the CreateTask and/or BufferTask. These headers represent a subset of the headers that will be configured for the task's HTTP request. Some HTTP request headers will be ignored or replaced. A partial list of headers that will be ignored or replaced is: * Several predefined headers, prefixed with "X-CloudTasks-", can be used to define properties of the task. * Host: This will be computed by Cloud Tasks and derived from HttpRequest.url. * Content-Length: This will be computed by Cloud Tasks. `Content-Type` won't be set by Cloud Tasks. You can explicitly set `Content-Type` to a media type when the task is created. For example,`Content-Type` can be set to `"application/octet-stream"` or `"application/json"`. The default value is set to "application/json"`. * User-Agent: This will be set to `"Google-Cloud-Tasks"`. Headers which can have multiple values (according to RFC2616) can be specified using comma-separated values. The size of the headers must be less than 80KB. Queue-level headers to override headers of all the tasks in the queue.
  /// [httpMethod] The HTTP method to use for the request. When specified, it overrides HttpRequest for the task. Note that if the value is set to HttpMethod the HttpRequest of the task will be ignored at execution time.
  /// [oauthToken] If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) will be generated and attached as the `Authorization` header in the HTTP request. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
  /// [oidcToken] If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
  /// [uriOverride] URI override. When specified, overrides the execution URI for all the tasks in the queue.
  const HttpTarget({
    this.headerOverrides,
    this.httpMethod,
    this.oauthToken,
    this.oidcToken,
    this.uriOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerOverrides': ?pulumi.Input.mapOptionalInputValue<List<HeaderOverride>, List<Map<String, dynamic>>>(headerOverrides, (value) => pulumi.Input.encodeList<HeaderOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpMethod': ?pulumi.Input.mapOptionalInputValue<HttpTargetHttpMethod, String>(httpMethod, (value) => value.wireValue),
      'oauthToken': ?pulumi.Input.mapOptionalInputValue<OAuthToken, Map<String, dynamic>>(oauthToken, (value) => value.toMap()),
      'oidcToken': ?pulumi.Input.mapOptionalInputValue<OidcToken, Map<String, dynamic>>(oidcToken, (value) => value.toMap()),
      'uriOverride': ?pulumi.Input.mapOptionalInputValue<UriOverride, Map<String, dynamic>>(uriOverride, (value) => value.toMap()),
    };
  }

  factory HttpTarget.fromMap(Map<String, dynamic> map) {
    return HttpTarget(
      headerOverrides: (() { final guardedValue = map['headerOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HeaderOverride>(guardedValue, (value) => HeaderOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpTargetHttpMethod.fromValue(guardedValue as String)); })(),
      oauthToken: (() { final guardedValue = map['oauthToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OAuthToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidcToken: (() { final guardedValue = map['oidcToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OidcToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uriOverride: (() { final guardedValue = map['uriOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UriOverride.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
