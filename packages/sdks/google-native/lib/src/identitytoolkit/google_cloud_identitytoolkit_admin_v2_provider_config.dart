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
      'state': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2ProviderConfigState, String>(state, (value) => value.wireValue),
      'totpProviderConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig, Map<String, dynamic>>(totpProviderConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2ProviderConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2ProviderConfig(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIdentitytoolkitAdminV2ProviderConfigState.fromValue(guardedValue as String)); })(),
      totpProviderConfig: (() { final guardedValue = map['totpProviderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

