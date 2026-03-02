// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relay_get_hybrid_connection_authorization_rule_args_doc}
/// Arguments for getHybridConnectionAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_relay_get_hybrid_connection_authorization_rule_args_doc}
class GetHybridConnectionAuthorizationRuleArgs {
  /// The authorization rule name.
  final pulumi.Input<String> authorizationRuleName;
  /// The hybrid connection name.
  final pulumi.Input<String> hybridConnectionName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHybridConnectionAuthorizationRuleArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [hybridConnectionName] The hybrid connection name.
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetHybridConnectionAuthorizationRuleArgs({
    required this.authorizationRuleName,
    required this.hybridConnectionName,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': authorizationRuleName,
      'hybridConnectionName': hybridConnectionName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHybridConnectionAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetHybridConnectionAuthorizationRuleArgs(
      authorizationRuleName: (map['authorizationRuleName'] as String).input(),
      hybridConnectionName: (map['hybridConnectionName'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

