// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_custom_provider_authz_extension.dart';
import 'authz_policy_custom_provider_cloud_iap.dart';

class AuthzPolicyCustomProvider {
  /// Delegate authorization decision to user authored Service Extension. Only one of cloudIap or authzExtension can be specified.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyCustomProviderAuthzExtension>? authzExtension;
  /// Delegates authorization decisions to Cloud IAP. Applicable only for managed load balancers. Enabling Cloud IAP at the AuthzPolicy level is not compatible with Cloud IAP settings in the BackendService. Enabling IAP in both places will result in request failure. Ensure that IAP is enabled in either the AuthzPolicy or the BackendService but not in both places.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyCustomProviderCloudIap>? cloudIap;

  /// Creates a new [AuthzPolicyCustomProvider].
  /// [authzExtension] Delegate authorization decision to user authored Service Extension. Only one of cloudIap or authzExtension can be specified.
  /// [cloudIap] Delegates authorization decisions to Cloud IAP. Applicable only for managed load balancers. Enabling Cloud IAP at the AuthzPolicy level is not compatible with Cloud IAP settings in the BackendService. Enabling IAP in both places will result in request failure. Ensure that IAP is enabled in either the AuthzPolicy or the BackendService but not in both places.
  AuthzPolicyCustomProvider({
    this.authzExtension,
    this.cloudIap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authzExtension': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyCustomProviderAuthzExtension, Map<String, dynamic>>(authzExtension, (value) => value.toMap()),
      'cloudIap': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyCustomProviderCloudIap, Map<String, dynamic>>(cloudIap, (value) => value.toMap()),
    };
  }

  factory AuthzPolicyCustomProvider.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyCustomProvider(
      authzExtension: (() { final guardedValue = map['authzExtension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyCustomProviderAuthzExtension.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudIap: (() { final guardedValue = map['cloudIap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyCustomProviderCloudIap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

