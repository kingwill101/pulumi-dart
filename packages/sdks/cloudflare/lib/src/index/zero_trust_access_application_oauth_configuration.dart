// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_application_oauth_configuration_dynamic_client_registration.dart';
import 'zero_trust_access_application_oauth_configuration_grant.dart';

class ZeroTrustAccessApplicationOauthConfiguration {
  /// Settings for OAuth dynamic client registration.
  final pulumi.Input<ZeroTrustAccessApplicationOauthConfigurationDynamicClientRegistration?>? dynamicClientRegistration;
  /// Whether the OAuth configuration is enabled for this application. When set to `false`, Access will not handle OAuth for this application. Defaults to `true` if omitted.
  final pulumi.Input<bool?>? enabled;
  /// Settings for OAuth grant behavior.
  final pulumi.Input<ZeroTrustAccessApplicationOauthConfigurationGrant?>? grant;

  /// Creates a new [ZeroTrustAccessApplicationOauthConfiguration].
  /// [dynamicClientRegistration] Settings for OAuth dynamic client registration.
  /// [enabled] Whether the OAuth configuration is enabled for this application. When set to `false`, Access will not handle OAuth for this application. Defaults to `true` if omitted.
  /// [grant] Settings for OAuth grant behavior.
  const ZeroTrustAccessApplicationOauthConfiguration({
    this.dynamicClientRegistration,
    this.enabled,
    this.grant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicClientRegistration': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationOauthConfigurationDynamicClientRegistration, Map<String, dynamic>>(dynamicClientRegistration, (value) => value.toMap()),
      'enabled': ?enabled,
      'grant': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationOauthConfigurationGrant, Map<String, dynamic>>(grant, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessApplicationOauthConfiguration.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationOauthConfiguration(
      dynamicClientRegistration: (() { final guardedValue = map['dynamicClientRegistration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationOauthConfigurationDynamicClientRegistration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      grant: (() { final guardedValue = map['grant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationOauthConfigurationGrant.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
