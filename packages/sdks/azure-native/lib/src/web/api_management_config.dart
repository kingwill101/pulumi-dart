// ignore_for_file: unused_element, unnecessary_cast


/// Azure API management (APIM) configuration linked to the app.
class ApiManagementConfig {
  /// APIM-Api Identifier.
  final String? id;

  /// Creates a new [ApiManagementConfig].
  /// [id] APIM-Api Identifier.
  ApiManagementConfig({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ApiManagementConfig.fromMap(Map<String, dynamic> map) {
    return ApiManagementConfig(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

