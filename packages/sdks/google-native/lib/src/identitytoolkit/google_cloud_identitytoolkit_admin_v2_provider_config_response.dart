// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_totp_mfa_provider_config_response.dart';

/// ProviderConfig describes the supported MFA providers along with their configurations.
class GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse {
  /// Describes the state of the MultiFactor Authentication type.
  final pulumi.Input<String> state;
  /// TOTP MFA provider config for this project.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse> totpProviderConfig;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse].
  /// [state] Describes the state of the MultiFactor Authentication type.
  /// [totpProviderConfig] TOTP MFA provider config for this project.
  const GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse({
    required this.state,
    required this.totpProviderConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'totpProviderConfig': pulumi.Input.mapInputValue<GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse, Map<String, dynamic>>(totpProviderConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse(
      state: pulumi.Input.fromValue(map['state'] as String),
      totpProviderConfig: pulumi.Input.fromValue(GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse.fromMap((map['totpProviderConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

