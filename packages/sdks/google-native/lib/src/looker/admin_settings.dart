// ignore_for_file: unused_element, unnecessary_cast


/// Looker instance Admin settings fields.
class AdminSettings {
  /// Email domain allowlist for the instance.
  final List<String>? allowedEmailDomains;

  /// Creates a new [AdminSettings].
  /// [allowedEmailDomains] Email domain allowlist for the instance.
  AdminSettings({
    this.allowedEmailDomains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedEmailDomains': ?allowedEmailDomains,
    };
  }

  factory AdminSettings.fromMap(Map<String, dynamic> map) {
    return AdminSettings(
      allowedEmailDomains: map['allowedEmailDomains'] == null ? null : (map['allowedEmailDomains'] as List).cast<String>(),
    );
  }
}

