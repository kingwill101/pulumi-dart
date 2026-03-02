// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_security_standard_args_doc}
/// Arguments for getSecurityStandard.
/// {@endtemplate}
/// {@macro pulumi_security_get_security_standard_args_doc}
class GetSecurityStandardArgs {
  /// The scope of the security standard. Valid scopes are: management group (format: 'providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  final pulumi.Input<String> scope;
  /// The Security Standard key - unique key for the standard type
  final pulumi.Input<String> standardId;

  /// Creates a new [GetSecurityStandardArgs].
  /// [scope] The scope of the security standard. Valid scopes are: management group (format: 'providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  /// [standardId] The Security Standard key - unique key for the standard type
  GetSecurityStandardArgs({
    required this.scope,
    required this.standardId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
      'standardId': standardId,
    };
  }

  factory GetSecurityStandardArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityStandardArgs(
      scope: (map['scope'] as String).input(),
      standardId: (map['standardId'] as String).input(),
    );
  }
}

