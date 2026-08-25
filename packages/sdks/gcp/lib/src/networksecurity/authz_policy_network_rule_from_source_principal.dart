// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_network_rule_from_source_principal_principal.dart';

class AuthzPolicyNetworkRuleFromSourcePrincipal {
  /// Required. A non-empty string whose value is matched against the principal value based on the principalSelector.
  /// Only exact match can be applied for CLIENT_CERT_URI_SAN, CLIENT_CERT_DNS_NAME_SAN, CLIENT_CERT_COMMON_NAME selectors.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyNetworkRuleFromSourcePrincipalPrincipal?>? principal;
  /// An enum to decide what principal value the principal rule will match against. If not specified, the PrincipalSelector is CLIENT_CERT_URI_SAN.
  /// Default value is `CLIENT_CERT_URI_SAN`.
  /// Possible values are: `PRINCIPAL_SELECTOR_UNSPECIFIED`, `CLIENT_CERT_URI_SAN`, `CLIENT_CERT_DNS_NAME_SAN`, `CLIENT_CERT_COMMON_NAME`.
  final pulumi.Input<String?>? principalSelector;

  /// Creates a new [AuthzPolicyNetworkRuleFromSourcePrincipal].
  /// [principal] Required. A non-empty string whose value is matched against the principal value based on the principalSelector.
  /// [principalSelector] An enum to decide what principal value the principal rule will match against. If not specified, the PrincipalSelector is CLIENT_CERT_URI_SAN.
  const AuthzPolicyNetworkRuleFromSourcePrincipal({
    this.principal,
    this.principalSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principal': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyNetworkRuleFromSourcePrincipalPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
      'principalSelector': ?principalSelector,
    };
  }

  factory AuthzPolicyNetworkRuleFromSourcePrincipal.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleFromSourcePrincipal(
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyNetworkRuleFromSourcePrincipalPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      principalSelector: (() { final guardedValue = map['principalSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
