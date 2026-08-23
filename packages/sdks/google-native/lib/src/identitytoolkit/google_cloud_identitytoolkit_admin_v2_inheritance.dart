// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings that the tenants will inherit from project level.
class GoogleCloudIdentitytoolkitAdminV2Inheritance {
  /// Whether to allow the tenant to inherit custom domains, email templates, and custom SMTP settings. If true, email sent from tenant will follow the project level email sending configurations. If false (by default), emails will go with the default settings with no customizations.
  final pulumi.Input<bool>? emailSendingConfig;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2Inheritance].
  /// [emailSendingConfig] Whether to allow the tenant to inherit custom domains, email templates, and custom SMTP settings. If true, email sent from tenant will follow the project level email sending configurations. If false (by default), emails will go with the default settings with no customizations.
  const GoogleCloudIdentitytoolkitAdminV2Inheritance({
    this.emailSendingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailSendingConfig': ?emailSendingConfig,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2Inheritance.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2Inheritance(
      emailSendingConfig: (() { final guardedValue = map['emailSendingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
