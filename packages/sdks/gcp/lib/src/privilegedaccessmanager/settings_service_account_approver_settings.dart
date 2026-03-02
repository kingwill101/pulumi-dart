// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsServiceAccountApproverSettings {
  /// Indicates whether service account is allowed to grant approvals.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [SettingsServiceAccountApproverSettings].
  /// [enabled] Indicates whether service account is allowed to grant approvals.
  SettingsServiceAccountApproverSettings({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory SettingsServiceAccountApproverSettings.fromMap(Map<String, dynamic> map) {
    return SettingsServiceAccountApproverSettings(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

