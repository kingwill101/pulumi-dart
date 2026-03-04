// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_rule_match_config.dart';

class OrganizationSecurityPolicyRuleMatch {
  /// The configuration options for matching the rule.
  /// Structure is documented below.
  final pulumi.Input<OrganizationSecurityPolicyRuleMatchConfig> config;

  /// A description of the rule.
  final pulumi.Input<String>? description;

  /// Preconfigured versioned expression. For organization security policy rules,
  /// the only supported type is "FIREWALL".
  /// Default value is `FIREWALL`.
  /// Possible values are: `FIREWALL`.
  final pulumi.Input<String>? versionedExpr;

  /// Creates a new [OrganizationSecurityPolicyRuleMatch].
  /// [config] The configuration options for matching the rule.
  /// [description] A description of the rule.
  /// [versionedExpr] Preconfigured versioned expression. For organization security policy rules,
  OrganizationSecurityPolicyRuleMatch({
    required this.config,
    this.description,
    this.versionedExpr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config':
          pulumi.Input.mapInputValue<
            OrganizationSecurityPolicyRuleMatchConfig,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'description': ?description,
      'versionedExpr': ?versionedExpr,
    };
  }

  factory OrganizationSecurityPolicyRuleMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return OrganizationSecurityPolicyRuleMatch(
      config: pulumi.Input.fromValue(
        OrganizationSecurityPolicyRuleMatchConfig.fromMap(
          (map['config']! as Map).cast<String, dynamic>(),
        ),
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      versionedExpr: (() {
        final guardedValue = map['versionedExpr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
