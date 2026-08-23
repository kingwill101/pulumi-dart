// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_web_test_request_header.dart';

class StandardWebTestRequest {
  /// The WebTest request body.
  final pulumi.Input<String>? body;
  /// Should the following of redirects be enabled? Defaults to `true`.
  final pulumi.Input<bool>? followRedirectsEnabled;
  /// One or more `header` blocks as defined above.
  final pulumi.Input<List<StandardWebTestRequestHeader>>? headers;
  /// Which HTTP verb to use for the call. Options are 'GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'HEAD', and 'OPTIONS'. Defaults to `GET`.
  final pulumi.Input<String>? httpVerb;
  /// Should the parsing of dependend requests be enabled? Defaults to `true`.
  final pulumi.Input<bool>? parseDependentRequestsEnabled;
  /// The WebTest request URL.
  final pulumi.Input<String> url;

  /// Creates a new [StandardWebTestRequest].
  /// [body] The WebTest request body.
  /// [followRedirectsEnabled] Should the following of redirects be enabled? Defaults to `true`.
  /// [headers] One or more `header` blocks as defined above.
  /// [httpVerb] Which HTTP verb to use for the call. Options are 'GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'HEAD', and 'OPTIONS'. Defaults to `GET`.
  /// [parseDependentRequestsEnabled] Should the parsing of dependend requests be enabled? Defaults to `true`.
  /// [url] The WebTest request URL.
  const StandardWebTestRequest({
    this.body,
    this.followRedirectsEnabled,
    this.headers,
    this.httpVerb,
    this.parseDependentRequestsEnabled,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'followRedirectsEnabled': ?followRedirectsEnabled,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<StandardWebTestRequestHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<StandardWebTestRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpVerb': ?httpVerb,
      'parseDependentRequestsEnabled': ?parseDependentRequestsEnabled,
      'url': url,
    };
  }

  factory StandardWebTestRequest.fromMap(Map<String, dynamic> map) {
    return StandardWebTestRequest(
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      followRedirectsEnabled: (() { final guardedValue = map['followRedirectsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StandardWebTestRequestHeader>(guardedValue, (value) => StandardWebTestRequestHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      httpVerb: (() { final guardedValue = map['httpVerb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parseDependentRequestsEnabled: (() { final guardedValue = map['parseDependentRequestsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
