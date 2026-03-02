// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Looker instance Admin settings fields.
class AdminSettingsResponse {
  /// Email domain allowlist for the instance.
  final pulumi.Input<List<String>> allowedEmailDomains;

  /// Creates a new [AdminSettingsResponse].
  /// [allowedEmailDomains] Email domain allowlist for the instance.
  AdminSettingsResponse({
    required this.allowedEmailDomains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedEmailDomains': allowedEmailDomains,
    };
  }

  factory AdminSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AdminSettingsResponse(
      allowedEmailDomains: ((map['allowedEmailDomains'] as List).cast<String>()).input(),
    );
  }
}

