// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for terminal appearance.
class TerminalSettingsResponse {
  /// Size of terminal font.
  final pulumi.Input<String?>? fontSize;
  /// Style of terminal font.
  final pulumi.Input<String?>? fontStyle;

  /// Creates a new [TerminalSettingsResponse].
  /// [fontSize] Size of terminal font.
  /// [fontStyle] Style of terminal font.
  const TerminalSettingsResponse({
    this.fontSize,
    this.fontStyle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fontSize': ?fontSize,
      'fontStyle': ?fontStyle,
    };
  }

  factory TerminalSettingsResponse.fromMap(Map<String, dynamic> map) {
    return TerminalSettingsResponse(
      fontSize: (() { final guardedValue = map['fontSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fontStyle: (() { final guardedValue = map['fontStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
