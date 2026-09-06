// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OAuth settings for the API
class ApiOAuthSettingsParameter {
  /// Options available to this parameter
  final pulumi.Input<dynamic>? options;
  /// UI definitions per culture as caller can specify the culture
  final pulumi.Input<dynamic>? uiDefinition;
  /// Value of the setting
  final pulumi.Input<String?>? value;

  /// Creates a new [ApiOAuthSettingsParameter].
  /// [options] Options available to this parameter
  /// [uiDefinition] UI definitions per culture as caller can specify the culture
  /// [value] Value of the setting
  const ApiOAuthSettingsParameter({
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

  factory ApiOAuthSettingsParameter.fromMap(Map<String, dynamic> map) {
    return ApiOAuthSettingsParameter(
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      uiDefinition: (() { final guardedValue = map['uiDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
