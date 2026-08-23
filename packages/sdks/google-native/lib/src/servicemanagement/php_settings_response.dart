// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_language_settings_response.dart';

/// Settings for Php client libraries.
class PhpSettingsResponse {
  /// Some settings.
  final pulumi.Input<CommonLanguageSettingsResponse> common;

  /// Creates a new [PhpSettingsResponse].
  /// [common] Some settings.
  const PhpSettingsResponse({
    required this.common,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': pulumi.Input.mapInputValue<CommonLanguageSettingsResponse, Map<String, dynamic>>(common, (value) => value.toMap()),
    };
  }

  factory PhpSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PhpSettingsResponse(
      common: pulumi.Input.fromValue(CommonLanguageSettingsResponse.fromMap((map['common']! as Map).cast<String, dynamic>())),
    );
  }
}
