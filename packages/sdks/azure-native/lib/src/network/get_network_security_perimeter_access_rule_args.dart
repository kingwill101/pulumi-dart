// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_security_perimeter_access_rule_args_doc}
/// Arguments for getNetworkSecurityPerimeterAccessRule.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_security_perimeter_access_rule_args_doc}
class GetNetworkSecurityPerimeterAccessRuleArgs {
  /// The name of the NSP access rule.
  final pulumi.Input<String> accessRuleName;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// The name of the NSP profile.
  final pulumi.Input<String> profileName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkSecurityPerimeterAccessRuleArgs].
  /// [accessRuleName] The name of the NSP access rule.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [profileName] The name of the NSP profile.
  /// [resourceGroupName] The name of the resource group.
  GetNetworkSecurityPerimeterAccessRuleArgs({
    required pulumi.Output<String> accessRuleName,
    required pulumi.Output<String> networkSecurityPerimeterName,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accessRuleName = pulumi.Input.asInput<String>(accessRuleName),
      networkSecurityPerimeterName = pulumi.Input.asInput<String>(networkSecurityPerimeterName),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRuleName': accessRuleName,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkSecurityPerimeterAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterAccessRuleArgs(
      accessRuleName: pulumi.Output.create<String>(map['accessRuleName'] as String),
      networkSecurityPerimeterName: pulumi.Output.create<String>(map['networkSecurityPerimeterName'] as String),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

