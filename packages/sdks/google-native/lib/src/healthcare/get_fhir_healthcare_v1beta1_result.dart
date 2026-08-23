// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFhir.
class GetFhirHealthcareV1beta1Result {
  /// The HTTP Content-Type header value specifying the content type of the body.
  final String contentType;
  /// The HTTP request/response body as raw binary.
  final String data;
  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  final List<Map<String, String>> extensions;

  /// Creates a new [GetFhirHealthcareV1beta1Result].
  /// [contentType] The HTTP Content-Type header value specifying the content type of the body.
  /// [data] The HTTP request/response body as raw binary.
  /// [extensions] Application specific response metadata. Must be set in the first response for streaming APIs.
  const GetFhirHealthcareV1beta1Result({
    required this.contentType,
    required this.data,
    required this.extensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'data': data,
      'extensions': extensions,
    };
  }

  factory GetFhirHealthcareV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetFhirHealthcareV1beta1Result(
      contentType: map['contentType'] as String,
      data: map['data'] as String,
      extensions: (map['extensions'] as List).cast<Map<String, String>>(),
    );
  }
}
