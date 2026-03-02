// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_language_settings_response.dart';

/// Settings for Ruby client libraries.
class RubySettingsResponse {
  /// Some settings.
  final pulumi.Input<CommonLanguageSettingsResponse> common;

  /// Creates a new [RubySettingsResponse].
  /// [common] Some settings.
  RubySettingsResponse({
    required this.common,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': pulumi.Input.mapInputValue<CommonLanguageSettingsResponse, Map<String, dynamic>>(common, (value) => value.toMap()),
    };
  }

  factory RubySettingsResponse.fromMap(Map<String, dynamic> map) {
    return RubySettingsResponse(
      common: (CommonLanguageSettingsResponse.fromMap((map['common'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

