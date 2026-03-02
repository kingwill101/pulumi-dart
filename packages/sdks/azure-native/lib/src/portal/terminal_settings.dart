// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for terminal appearance.
class TerminalSettings {
  /// Size of terminal font.
  final pulumi.Input<String>? fontSize;
  /// Style of terminal font.
  final pulumi.Input<String>? fontStyle;

  /// Creates a new [TerminalSettings].
  /// [fontSize] Size of terminal font.
  /// [fontStyle] Style of terminal font.
  TerminalSettings({
    this.fontSize,
    this.fontStyle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fontSize': ?fontSize,
      'fontStyle': ?fontStyle,
    };
  }

  factory TerminalSettings.fromMap(Map<String, dynamic> map) {
    return TerminalSettings(
      fontSize: map['fontSize'] == null ? null : (map['fontSize'] as String).input(),
      fontStyle: map['fontStyle'] == null ? null : (map['fontStyle'] as String).input(),
    );
  }
}

