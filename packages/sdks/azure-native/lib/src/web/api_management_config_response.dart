// ignore_for_file: unused_element, unnecessary_cast


/// Azure API management (APIM) configuration linked to the app.
class ApiManagementConfigResponse {
  /// APIM-Api Identifier.
  final String? id;

  /// Creates a new [ApiManagementConfigResponse].
  /// [id] APIM-Api Identifier.
  ApiManagementConfigResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ApiManagementConfigResponse.fromMap(Map<String, dynamic> map) {
    return ApiManagementConfigResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

