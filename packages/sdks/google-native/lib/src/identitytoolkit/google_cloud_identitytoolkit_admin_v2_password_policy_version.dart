// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_custom_strength_options.dart';

/// The strength attributes for the password policy on the project.
class GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion {
  /// The custom strength options enforced by the password policy.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions>? customStrengthOptions;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion].
  /// [customStrengthOptions] The custom strength options enforced by the password policy.
  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion({
    this.customStrengthOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customStrengthOptions': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions, Map<String, dynamic>>(customStrengthOptions, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion(
      customStrengthOptions: map['customStrengthOptions'] == null ? null : (GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions.fromMap((map['customStrengthOptions']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

