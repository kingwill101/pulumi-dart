// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_custom_strength_options_response.dart';

/// The strength attributes for the password policy on the project.
class GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse {
  /// The custom strength options enforced by the password policy.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse> customStrengthOptions;
  /// schema version number for the password policy
  final pulumi.Input<int> schemaVersion;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse].
  /// [customStrengthOptions] The custom strength options enforced by the password policy.
  /// [schemaVersion] schema version number for the password policy
  const GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse({
    required this.customStrengthOptions,
    required this.schemaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customStrengthOptions': pulumi.Input.mapInputValue<GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse, Map<String, dynamic>>(customStrengthOptions, (value) => value.toMap()),
      'schemaVersion': schemaVersion,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse(
      customStrengthOptions: pulumi.Input.fromValue(GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse.fromMap((map['customStrengthOptions']! as Map).cast<String, dynamic>())),
      schemaVersion: pulumi.Input.fromValue(map['schemaVersion'] as int),
    );
  }
}
