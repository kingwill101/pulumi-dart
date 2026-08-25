// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_network_rule_from_not_source_principal_principal.dart';

class AuthzPolicyNetworkRuleFromNotSourcePrincipal {
  /// Required. A non-empty string whose value is matched against the principal value based on the principalSelector.
  /// Only exact match can be applied for CLIENT_CERT_URI_SAN, CLIENT_CERT_DNS_NAME_SAN, CLIENT_CERT_COMMON_NAME selectors.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyNetworkRuleFromNotSourcePrincipalPrincipal?>? principal;
  /// An enum to decide what principal value the principal rule will match against. If not specified, the PrincipalSelector is CLIENT_CERT_URI_SAN.
  /// Default value is `CLIENT_CERT_URI_SAN`.
  /// Possible values are: `PRINCIPAL_SELECTOR_UNSPECIFIED`, `CLIENT_CERT_URI_SAN`, `CLIENT_CERT_DNS_NAME_SAN`, `CLIENT_CERT_COMMON_NAME`.
  final pulumi.Input<String?>? principalSelector;

  /// Creates a new [AuthzPolicyNetworkRuleFromNotSourcePrincipal].
  /// [principal] Required. A non-empty string whose value is matched against the principal value based on the principalSelector.
  /// [principalSelector] An enum to decide what principal value the principal rule will match against. If not specified, the PrincipalSelector is CLIENT_CERT_URI_SAN.
  const AuthzPolicyNetworkRuleFromNotSourcePrincipal({
    this.principal,
    this.principalSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principal': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyNetworkRuleFromNotSourcePrincipalPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
      'principalSelector': ?principalSelector,
    };
  }

  factory AuthzPolicyNetworkRuleFromNotSourcePrincipal.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleFromNotSourcePrincipal(
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyNetworkRuleFromNotSourcePrincipalPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      principalSelector: (() { final guardedValue = map['principalSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
