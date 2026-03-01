// ignore_for_file: unused_element, unnecessary_cast


/// Settings for terminal appearance.
class TerminalSettingsResponse {
  /// Size of terminal font.
  final String? fontSize;
  /// Style of terminal font.
  final String? fontStyle;

  /// Creates a new [TerminalSettingsResponse].
  /// [fontSize] Size of terminal font.
  /// [fontStyle] Style of terminal font.
  TerminalSettingsResponse({
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
      fontSize: map['fontSize'] == null ? null : map['fontSize'] as String,
      fontStyle: map['fontStyle'] == null ? null : map['fontStyle'] as String,
    );
  }
}

