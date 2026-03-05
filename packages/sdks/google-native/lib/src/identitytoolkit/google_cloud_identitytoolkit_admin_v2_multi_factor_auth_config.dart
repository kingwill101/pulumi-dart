// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_multi_factor_auth_config_enabled_providers_item.dart';
import 'google_cloud_identitytoolkit_admin_v2_multi_factor_auth_config_state.dart';
import 'google_cloud_identitytoolkit_admin_v2_provider_config.dart';

/// Options related to MultiFactor Authentication for the project.
class GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig {
  /// A list of usable second factors for this project.
  final pulumi.Input<List<GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem>>? enabledProviders;
  /// A list of usable second factors for this project along with their configurations. This field does not support phone based MFA, for that use the 'enabled_providers' field.
  final pulumi.Input<List<GoogleCloudIdentitytoolkitAdminV2ProviderConfig>>? providerConfigs;
  /// Whether MultiFactor Authentication has been enabled for this project.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState>? state;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig].
  /// [enabledProviders] A list of usable second factors for this project.
  /// [providerConfigs] A list of usable second factors for this project along with their configurations. This field does not support phone based MFA, for that use the 'enabled_providers' field.
  /// [state] Whether MultiFactor Authentication has been enabled for this project.
  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig({
    this.enabledProviders,
    this.providerConfigs,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledProviders': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem>, List<String>>(enabledProviders, (value) => pulumi.Input.encodeList<GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem, String>(value, (value) => value.wireValue)),
      'providerConfigs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIdentitytoolkitAdminV2ProviderConfig>, List<Map<String, dynamic>>>(providerConfigs, (value) => pulumi.Input.encodeList<GoogleCloudIdentitytoolkitAdminV2ProviderConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState, String>(state, (value) => value.wireValue),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig(
      enabledProviders: (() { final guardedValue = map['enabledProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem>(guardedValue, (value) => GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem.fromValue(value as String))); })(),
      providerConfigs: (() { final guardedValue = map['providerConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudIdentitytoolkitAdminV2ProviderConfig>(guardedValue, (value) => GoogleCloudIdentitytoolkitAdminV2ProviderConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState.fromValue(guardedValue as String)); })(),
    );
  }
}

