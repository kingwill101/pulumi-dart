// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for settings related to email privacy and public visibility. Settings in this config protect against email enumeration, but may make some trade-offs in user-friendliness.
class GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig {
  /// Migrates the project to a state of improved email privacy. For example certain error codes are more generic to avoid giving away information on whether the account exists. In addition, this disables certain features that as a side-effect allow user enumeration. Enabling this toggle disables the fetchSignInMethodsForEmail functionality and changing the user's email to an unverified email. It is recommended to remove dependence on this functionality and enable this toggle to improve user privacy.
  final pulumi.Input<bool>? enableImprovedEmailPrivacy;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig].
  /// [enableImprovedEmailPrivacy] Migrates the project to a state of improved email privacy. For example certain error codes are more generic to avoid giving away information on whether the account exists. In addition, this disables certain features that as a side-effect allow user enumeration. Enabling this toggle disables the fetchSignInMethodsForEmail functionality and changing the user's email to an unverified email. It is recommended to remove dependence on this functionality and enable this toggle to improve user privacy.
  const GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig({
    this.enableImprovedEmailPrivacy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableImprovedEmailPrivacy': ?enableImprovedEmailPrivacy,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig(
      enableImprovedEmailPrivacy: (() { final guardedValue = map['enableImprovedEmailPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

