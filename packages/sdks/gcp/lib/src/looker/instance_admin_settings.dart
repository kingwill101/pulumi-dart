// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAdminSettings {
  /// Email domain allowlist for the instance.
  /// Define the email domains to which your users can deliver Looker (Google Cloud core) content.
  /// Updating this list will restart the instance. Updating the allowed email domains from terraform
  /// means the value provided will be considered as the entire list and not an amendment to the
  /// existing list of allowed email domains.
  final pulumi.Input<List<String>>? allowedEmailDomains;

  /// Creates a new [InstanceAdminSettings].
  /// [allowedEmailDomains] Email domain allowlist for the instance.
  const InstanceAdminSettings({
    this.allowedEmailDomains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedEmailDomains': ?allowedEmailDomains,
    };
  }

  factory InstanceAdminSettings.fromMap(Map<String, dynamic> map) {
    return InstanceAdminSettings(
      allowedEmailDomains: (() { final guardedValue = map['allowedEmailDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
