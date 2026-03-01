// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings_response.dart';

/// Settings for Python client libraries.
class PythonSettingsResponse {
  /// Some settings.
  final CommonLanguageSettingsResponse common;

  /// Creates a new [PythonSettingsResponse].
  /// [common] Some settings.
  PythonSettingsResponse({
    required this.common,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': common.toMap(),
    };
  }

  factory PythonSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PythonSettingsResponse(
      common: CommonLanguageSettingsResponse.fromMap((map['common'] as Map).cast<String, dynamic>()),
    );
  }
}

