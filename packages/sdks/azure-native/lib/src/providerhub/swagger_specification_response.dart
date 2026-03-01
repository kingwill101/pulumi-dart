// ignore_for_file: unused_element, unnecessary_cast


class SwaggerSpecificationResponse {
  /// The api versions.
  final List<String>? apiVersions;
  /// The swagger spec folder uri.
  final String? swaggerSpecFolderUri;

  /// Creates a new [SwaggerSpecificationResponse].
  /// [apiVersions] The api versions.
  /// [swaggerSpecFolderUri] The swagger spec folder uri.
  SwaggerSpecificationResponse({
    this.apiVersions,
    this.swaggerSpecFolderUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersions': ?apiVersions,
      'swaggerSpecFolderUri': ?swaggerSpecFolderUri,
    };
  }

  factory SwaggerSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return SwaggerSpecificationResponse(
      apiVersions: map['apiVersions'] == null ? null : (map['apiVersions'] as List).cast<String>(),
      swaggerSpecFolderUri: map['swaggerSpecFolderUri'] == null ? null : map['swaggerSpecFolderUri'] as String,
    );
  }
}

