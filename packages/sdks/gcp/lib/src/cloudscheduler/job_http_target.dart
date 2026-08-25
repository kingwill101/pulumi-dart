// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_http_target_oauth_token.dart';
import 'job_http_target_oidc_token.dart';

class JobHttpTarget {
  /// HTTP request body.
  /// A request body is allowed only if the HTTP method is POST, PUT, or PATCH.
  /// It is an error to set body on a job with an incompatible HttpMethod.
  /// A base64-encoded string.
  final pulumi.Input<String?>? body;
  /// This map contains the header field names and values.
  /// Repeated headers are not supported, but a header value can contain commas.
  final pulumi.Input<Map<String, String>?>? headers;
  /// Which HTTP method to use for the request.
  final pulumi.Input<String?>? httpMethod;
  /// Contains information needed for generating an OAuth token.
  /// This type of authorization should be used when sending requests to a GCP endpoint.
  /// Structure is documented below.
  final pulumi.Input<JobHttpTargetOauthToken?>? oauthToken;
  /// Contains information needed for generating an OpenID Connect token.
  /// This type of authorization should be used when sending requests to third party endpoints or Cloud Run.
  /// Structure is documented below.
  final pulumi.Input<JobHttpTargetOidcToken?>? oidcToken;
  /// The full URI path that the request will be sent to.
  final pulumi.Input<String> uri;

  /// Creates a new [JobHttpTarget].
  /// [body] HTTP request body.
  /// [headers] This map contains the header field names and values.
  /// [httpMethod] Which HTTP method to use for the request.
  /// [oauthToken] Contains information needed for generating an OAuth token.
  /// [oidcToken] Contains information needed for generating an OpenID Connect token.
  /// [uri] The full URI path that the request will be sent to.
  const JobHttpTarget({
    this.body,
    this.headers,
    this.httpMethod,
    this.oauthToken,
    this.oidcToken,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'headers': ?headers,
      'httpMethod': ?httpMethod,
      'oauthToken': ?pulumi.Input.mapOptionalInputValue<JobHttpTargetOauthToken, Map<String, dynamic>>(oauthToken, (value) => value.toMap()),
      'oidcToken': ?pulumi.Input.mapOptionalInputValue<JobHttpTargetOidcToken, Map<String, dynamic>>(oidcToken, (value) => value.toMap()),
      'uri': uri,
    };
  }

  factory JobHttpTarget.fromMap(Map<String, dynamic> map) {
    return JobHttpTarget(
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthToken: (() { final guardedValue = map['oauthToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobHttpTargetOauthToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidcToken: (() { final guardedValue = map['oidcToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobHttpTargetOidcToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
