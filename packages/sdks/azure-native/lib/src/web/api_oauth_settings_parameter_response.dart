// ignore_for_file: unused_element, unnecessary_cast


/// OAuth settings for the API
class ApiOAuthSettingsParameterResponse {
  /// Options available to this parameter
  final dynamic options;
  /// UI definitions per culture as caller can specify the culture
  final dynamic uiDefinition;
  /// Value of the setting
  final String? value;

  /// Creates a new [ApiOAuthSettingsParameterResponse].
  /// [options] Options available to this parameter
  /// [uiDefinition] UI definitions per culture as caller can specify the culture
  /// [value] Value of the setting
  ApiOAuthSettingsParameterResponse({
    this.options,
    this.uiDefinition,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': ?options,
      'uiDefinition': ?uiDefinition,
      'value': ?value,
    };
  }

  factory ApiOAuthSettingsParameterResponse.fromMap(Map<String, dynamic> map) {
    return ApiOAuthSettingsParameterResponse(
      options: map['options'] == null ? null : map['options'],
      uiDefinition: map['uiDefinition'] == null ? null : map['uiDefinition'],
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

