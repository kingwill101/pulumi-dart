// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Looker instance Admin settings fields.
class AdminSettings {
  /// Email domain allowlist for the instance.
  final pulumi.Input<List<String>>? allowedEmailDomains;

  /// Creates a new [AdminSettings].
  /// [allowedEmailDomains] Email domain allowlist for the instance.
  AdminSettings({this.allowedEmailDomains});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allowedEmailDomains': ?allowedEmailDomains};
  }

  factory AdminSettings.fromMap(Map<String, dynamic> map) {
    return AdminSettings(
      allowedEmailDomains: (() {
        final guardedValue = map['allowedEmailDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
