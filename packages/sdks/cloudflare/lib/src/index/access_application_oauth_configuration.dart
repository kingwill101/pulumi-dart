// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_application_oauth_configuration_dynamic_client_registration.dart';
import 'access_application_oauth_configuration_grant.dart';

class AccessApplicationOauthConfiguration {
  /// Settings for OAuth dynamic client registration.
  final pulumi.Input<AccessApplicationOauthConfigurationDynamicClientRegistration?>? dynamicClientRegistration;
  /// Whether the OAuth configuration is enabled for this application. When set to `false`, Access will not handle OAuth for this application. Defaults to `true` if omitted.
  final pulumi.Input<bool?>? enabled;
  /// Settings for OAuth grant behavior.
  final pulumi.Input<AccessApplicationOauthConfigurationGrant?>? grant;

  /// Creates a new [AccessApplicationOauthConfiguration].
  /// [dynamicClientRegistration] Settings for OAuth dynamic client registration.
  /// [enabled] Whether the OAuth configuration is enabled for this application. When set to `false`, Access will not handle OAuth for this application. Defaults to `true` if omitted.
  /// [grant] Settings for OAuth grant behavior.
  const AccessApplicationOauthConfiguration({
    this.dynamicClientRegistration,
    this.enabled,
    this.grant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicClientRegistration': ?pulumi.Input.mapOptionalInputValue<AccessApplicationOauthConfigurationDynamicClientRegistration, Map<String, dynamic>>(dynamicClientRegistration, (value) => value.toMap()),
      'enabled': ?enabled,
      'grant': ?pulumi.Input.mapOptionalInputValue<AccessApplicationOauthConfigurationGrant, Map<String, dynamic>>(grant, (value) => value.toMap()),
    };
  }

  factory AccessApplicationOauthConfiguration.fromMap(Map<String, dynamic> map) {
    return AccessApplicationOauthConfiguration(
      dynamicClientRegistration: (() { final guardedValue = map['dynamicClientRegistration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationOauthConfigurationDynamicClientRegistration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      grant: (() { final guardedValue = map['grant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationOauthConfigurationGrant.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
