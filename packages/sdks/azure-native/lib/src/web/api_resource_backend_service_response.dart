// ignore_for_file: unused_element, unnecessary_cast


/// The API backend service
class ApiResourceBackendServiceResponse {
  /// The service URL
  final String? serviceUrl;

  /// Creates a new [ApiResourceBackendServiceResponse].
  /// [serviceUrl] The service URL
  ApiResourceBackendServiceResponse({
    this.serviceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceUrl': ?serviceUrl,
    };
  }

  factory ApiResourceBackendServiceResponse.fromMap(Map<String, dynamic> map) {
    return ApiResourceBackendServiceResponse(
      serviceUrl: map['serviceUrl'] == null ? null : map['serviceUrl'] as String,
    );
  }
}

