// ignore_for_file: unused_element, unnecessary_cast


/// Information about the formal API definition for the app.
class ApiDefinitionInfoResponse {
  /// The URL of the API definition.
  final String? url;

  /// Creates a new [ApiDefinitionInfoResponse].
  /// [url] The URL of the API definition.
  ApiDefinitionInfoResponse({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory ApiDefinitionInfoResponse.fromMap(Map<String, dynamic> map) {
    return ApiDefinitionInfoResponse(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

