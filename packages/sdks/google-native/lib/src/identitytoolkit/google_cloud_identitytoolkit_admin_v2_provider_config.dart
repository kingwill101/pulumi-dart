// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_provider_config_state.dart';
import 'google_cloud_identitytoolkit_admin_v2_totp_mfa_provider_config.dart';

/// ProviderConfig describes the supported MFA providers along with their configurations.
class GoogleCloudIdentitytoolkitAdminV2ProviderConfig {
  /// Describes the state of the MultiFactor Authentication type.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2ProviderConfigState>? state;
  /// TOTP MFA provider config for this project.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig>? totpProviderConfig;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2ProviderConfig].
  /// [state] Describes the state of the MultiFactor Authentication type.
  /// [totpProviderConfig] TOTP MFA provider config for this project.
  GoogleCloudIdentitytoolkitAdminV2ProviderConfig({
    this.state,
    this.totpProviderConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2ProviderConfigState, String>(state, (value) => value.value),
      'totpProviderConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig, Map<String, dynamic>>(totpProviderConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2ProviderConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2ProviderConfig(
      state: map['state'] == null ? null : (GoogleCloudIdentitytoolkitAdminV2ProviderConfigState.fromValue(map['state'] as String)).input(),
      totpProviderConfig: map['totpProviderConfig'] == null ? null : (GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig.fromMap((map['totpProviderConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

