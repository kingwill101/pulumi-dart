// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Result data returned by getFhir.
class GetFhirResult {
  /// The HTTP Content-Type header value specifying the content type of the body.
  final String? contentType;
  /// The HTTP request/response body as raw binary.
  final String? data;
  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  final List<Map<String, String>>? extensions;

  /// Creates a new [GetFhirResult].
  /// [contentType] The HTTP Content-Type header value specifying the content type of the body.
  /// [data] The HTTP request/response body as raw binary.
  /// [extensions] Application specific response metadata. Must be set in the first response for streaming APIs.
  const GetFhirResult({
    this.contentType,
    this.data,
    this.extensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'data': ?data,
      'extensions': ?extensions,
    };
  }

  factory GetFhirResult.fromMap(Map<String, dynamic> map) {
    return GetFhirResult(
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); })(),
    );
  }
}
