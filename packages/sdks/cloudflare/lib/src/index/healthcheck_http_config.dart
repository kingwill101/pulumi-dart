// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HealthcheckHttpConfig {
  /// Do not validate the certificate when the health check uses HTTPS.
  final pulumi.Input<bool?>? allowInsecure;
  /// A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy.
  final pulumi.Input<String?>? expectedBody;
  /// The expected HTTP response codes (e.g. "200") or code ranges (e.g. "2xx" for all codes starting with 2) of the health check.
  final pulumi.Input<List<String>?>? expectedCodes;
  /// Follow redirects if the origin returns a 3xx status code.
  final pulumi.Input<bool?>? followRedirects;
  /// The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden.
  final pulumi.Input<Map<String, List<String>>?>? header;
  /// The HTTP method to use for the health check.
  /// Available values: "GET", "HEAD".
  final pulumi.Input<String?>? method;
  /// The endpoint path to health check against.
  final pulumi.Input<String?>? path;
  /// Port number to connect to for the health check. Defaults to 80 if type is HTTP or 443 if type is HTTPS.
  final pulumi.Input<int?>? port;

  /// Creates a new [HealthcheckHttpConfig].
  /// [allowInsecure] Do not validate the certificate when the health check uses HTTPS.
  /// [expectedBody] A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy.
  /// [expectedCodes] The expected HTTP response codes (e.g. "200") or code ranges (e.g. "2xx" for all codes starting with 2) of the health check.
  /// [followRedirects] Follow redirects if the origin returns a 3xx status code.
  /// [header] The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden.
  /// [method] The HTTP method to use for the health check.
  /// [path] The endpoint path to health check against.
  /// [port] Port number to connect to for the health check. Defaults to 80 if type is HTTP or 443 if type is HTTPS.
  const HealthcheckHttpConfig({
    this.allowInsecure,
    this.expectedBody,
    this.expectedCodes,
    this.followRedirects,
    this.header,
    this.method,
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': ?allowInsecure,
      'expectedBody': ?expectedBody,
      'expectedCodes': ?expectedCodes,
      'followRedirects': ?followRedirects,
      'header': ?header,
      'method': ?method,
      'path': ?path,
      'port': ?port,
    };
  }

  factory HealthcheckHttpConfig.fromMap(Map<String, dynamic> map) {
    return HealthcheckHttpConfig(
      allowInsecure: (() { final guardedValue = map['allowInsecure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expectedBody: (() { final guardedValue = map['expectedBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedCodes: (() { final guardedValue = map['expectedCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      followRedirects: (() { final guardedValue = map['followRedirects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
