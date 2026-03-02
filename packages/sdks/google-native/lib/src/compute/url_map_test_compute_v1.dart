// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_map_test_header_compute_v1.dart';

/// Message for the expected URL mappings.
class UrlMapTestComputeV1 {
  /// Description of this test case.
  final pulumi.Input<String>? description;
  /// The expected output URL evaluated by the load balancer containing the scheme, host, path and query parameters. For rules that forward requests to backends, the test passes only when expectedOutputUrl matches the request forwarded by the load balancer to backends. For rules with urlRewrite, the test verifies that the forwarded request matches hostRewrite and pathPrefixRewrite in the urlRewrite action. When service is specified, expectedOutputUrl`s scheme is ignored. For rules with urlRedirect, the test passes only if expectedOutputUrl matches the URL in the load balancer's redirect response. If urlRedirect specifies https_redirect, the test passes only if the scheme in expectedOutputUrl is also set to HTTPS. If urlRedirect specifies strip_query, the test passes only if expectedOutputUrl does not contain any query parameters. expectedOutputUrl is optional when service is specified.
  final pulumi.Input<String>? expectedOutputUrl;
  /// For rules with urlRedirect, the test passes only if expectedRedirectResponseCode matches the HTTP status code in load balancer's redirect response. expectedRedirectResponseCode cannot be set when service is set.
  final pulumi.Input<int>? expectedRedirectResponseCode;
  /// HTTP headers for this request. If headers contains a host header, then host must also match the header value.
  final pulumi.Input<List<UrlMapTestHeaderComputeV1>>? headers;
  /// Host portion of the URL. If headers contains a host header, then host must also match the header value.
  final pulumi.Input<String>? host;
  /// Path portion of the URL.
  final pulumi.Input<String>? path;
  /// Expected BackendService or BackendBucket resource the given URL should be mapped to. The service field cannot be set if expectedRedirectResponseCode is set.
  final pulumi.Input<String>? service;

  /// Creates a new [UrlMapTestComputeV1].
  /// [description] Description of this test case.
  /// [expectedOutputUrl] The expected output URL evaluated by the load balancer containing the scheme, host, path and query parameters. For rules that forward requests to backends, the test passes only when expectedOutputUrl matches the request forwarded by the load balancer to backends. For rules with urlRewrite, the test verifies that the forwarded request matches hostRewrite and pathPrefixRewrite in the urlRewrite action. When service is specified, expectedOutputUrl`s scheme is ignored. For rules with urlRedirect, the test passes only if expectedOutputUrl matches the URL in the load balancer's redirect response. If urlRedirect specifies https_redirect, the test passes only if the scheme in expectedOutputUrl is also set to HTTPS. If urlRedirect specifies strip_query, the test passes only if expectedOutputUrl does not contain any query parameters. expectedOutputUrl is optional when service is specified.
  /// [expectedRedirectResponseCode] For rules with urlRedirect, the test passes only if expectedRedirectResponseCode matches the HTTP status code in load balancer's redirect response. expectedRedirectResponseCode cannot be set when service is set.
  /// [headers] HTTP headers for this request. If headers contains a host header, then host must also match the header value.
  /// [host] Host portion of the URL. If headers contains a host header, then host must also match the header value.
  /// [path] Path portion of the URL.
  /// [service] Expected BackendService or BackendBucket resource the given URL should be mapped to. The service field cannot be set if expectedRedirectResponseCode is set.
  UrlMapTestComputeV1({
    this.description,
    this.expectedOutputUrl,
    this.expectedRedirectResponseCode,
    this.headers,
    this.host,
    this.path,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expectedOutputUrl': ?expectedOutputUrl,
      'expectedRedirectResponseCode': ?expectedRedirectResponseCode,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<UrlMapTestHeaderComputeV1>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<UrlMapTestHeaderComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'host': ?host,
      'path': ?path,
      'service': ?service,
    };
  }

  factory UrlMapTestComputeV1.fromMap(Map<String, dynamic> map) {
    return UrlMapTestComputeV1(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      expectedOutputUrl: map['expectedOutputUrl'] == null ? null : (map['expectedOutputUrl']! as String).input(),
      expectedRedirectResponseCode: map['expectedRedirectResponseCode'] == null ? null : (map['expectedRedirectResponseCode']! as int).input(),
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<UrlMapTestHeaderComputeV1>(map['headers']!, (value) => UrlMapTestHeaderComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
    );
  }
}

