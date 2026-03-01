// ignore_for_file: unused_element, unnecessary_cast


/// API Definitions
class ApiResourceDefinitionsResponse {
  /// The modified swagger URL
  final String? modifiedSwaggerUrl;
  /// The original swagger URL
  final String? originalSwaggerUrl;

  /// Creates a new [ApiResourceDefinitionsResponse].
  /// [modifiedSwaggerUrl] The modified swagger URL
  /// [originalSwaggerUrl] The original swagger URL
  ApiResourceDefinitionsResponse({
    this.modifiedSwaggerUrl,
    this.originalSwaggerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modifiedSwaggerUrl': ?modifiedSwaggerUrl,
      'originalSwaggerUrl': ?originalSwaggerUrl,
    };
  }

  factory ApiResourceDefinitionsResponse.fromMap(Map<String, dynamic> map) {
    return ApiResourceDefinitionsResponse(
      modifiedSwaggerUrl: map['modifiedSwaggerUrl'] == null ? null : map['modifiedSwaggerUrl'] as String,
      originalSwaggerUrl: map['originalSwaggerUrl'] == null ? null : map['originalSwaggerUrl'] as String,
    );
  }
}

