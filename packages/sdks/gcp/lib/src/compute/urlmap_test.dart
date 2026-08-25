// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_test_header.dart';

class URLMapTest {
  /// Description of this test case.
  final pulumi.Input<String?>? description;
  /// The expected output URL evaluated by the load balancer containing the scheme, host, path and query parameters.
  /// For rules that forward requests to backends, the test passes only when expectedOutputUrl matches the request forwarded by the load balancer to backends. For rules with urlRewrite, the test verifies that the forwarded request matches hostRewrite and pathPrefixRewrite in the urlRewrite action. When service is specified, expectedOutputUrl`s scheme is ignored.
  /// For rules with urlRedirect, the test passes only if expectedOutputUrl matches the URL in the load balancer's redirect response. If urlRedirect specifies httpsRedirect, the test passes only if the scheme in expectedOutputUrl is also set to HTTPS. If urlRedirect specifies stripQuery, the test passes only if expectedOutputUrl does not contain any query parameters.
  /// expectedOutputUrl is optional when service is specified.
  final pulumi.Input<String?>? expectedOutputUrl;
  /// For rules with urlRedirect, the test passes only if expectedRedirectResponseCode matches the HTTP status code in load balancer's redirect response.
  /// expectedRedirectResponseCode cannot be set when service is set.
  final pulumi.Input<int?>? expectedRedirectResponseCode;
  /// HTTP headers for this request.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapTestHeader>?>? headers;
  /// Host portion of the URL.
  final pulumi.Input<String> host;
  /// Path portion of the URL.
  final pulumi.Input<String> path;
  /// The backend service or backend bucket link that should be matched by this test.
  final pulumi.Input<String?>? service;

  /// Creates a new [URLMapTest].
  /// [description] Description of this test case.
  /// [expectedOutputUrl] The expected output URL evaluated by the load balancer containing the scheme, host, path and query parameters.
  /// [expectedRedirectResponseCode] For rules with urlRedirect, the test passes only if expectedRedirectResponseCode matches the HTTP status code in load balancer's redirect response.
  /// [headers] HTTP headers for this request.
  /// [host] Host portion of the URL.
  /// [path] Path portion of the URL.
  /// [service] The backend service or backend bucket link that should be matched by this test.
  const URLMapTest({
    this.description,
    this.expectedOutputUrl,
    this.expectedRedirectResponseCode,
    this.headers,
    required this.host,
    required this.path,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expectedOutputUrl': ?expectedOutputUrl,
      'expectedRedirectResponseCode': ?expectedRedirectResponseCode,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<URLMapTestHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<URLMapTestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'host': host,
      'path': path,
      'service': ?service,
    };
  }

  factory URLMapTest.fromMap(Map<String, dynamic> map) {
    return URLMapTest(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedOutputUrl: (() { final guardedValue = map['expectedOutputUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedRedirectResponseCode: (() { final guardedValue = map['expectedRedirectResponseCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<URLMapTestHeader>(guardedValue, (value) => URLMapTestHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
