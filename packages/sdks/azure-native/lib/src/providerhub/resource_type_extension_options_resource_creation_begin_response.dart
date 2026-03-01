// ignore_for_file: unused_element, unnecessary_cast


/// Resource creation begin.
class ResourceTypeExtensionOptionsResourceCreationBeginResponse {
  /// The request.
  final List<String>? request;
  /// The response.
  final List<String>? response;

  /// Creates a new [ResourceTypeExtensionOptionsResourceCreationBeginResponse].
  /// [request] The request.
  /// [response] The response.
  ResourceTypeExtensionOptionsResourceCreationBeginResponse({
    this.request,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'request': ?request,
      'response': ?response,
    };
  }

  factory ResourceTypeExtensionOptionsResourceCreationBeginResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeExtensionOptionsResourceCreationBeginResponse(
      request: map['request'] == null ? null : (map['request'] as List).cast<String>(),
      response: map['response'] == null ? null : (map['response'] as List).cast<String>(),
    );
  }
}

