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
    required pulumi.Output<String> scope,
    required pulumi.Output<String> standardId,
  }) :
      scope = pulumi.Input.asInput<String>(scope),
      standardId = pulumi.Input.asInput<String>(standardId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
      'standardId': standardId,
    };
  }

  factory GetSecurityStandardArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityStandardArgs(
      scope: pulumi.Output.create<String>(map['scope'] as String),
      standardId: pulumi.Output.create<String>(map['standardId'] as String),
    );
  }
}

