// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_nsp_access_rule_args_doc}
/// Arguments for getNspAccessRule.
/// {@endtemplate}
/// {@macro pulumi_network_get_nsp_access_rule_args_doc}
class GetNspAccessRuleArgs {
  /// The name of the NSP access rule.
  final pulumi.Input<String> accessRuleName;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// The name of the NSP profile.
  final pulumi.Input<String> profileName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNspAccessRuleArgs].
  /// [accessRuleName] The name of the NSP access rule.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [profileName] The name of the NSP profile.
  /// [resourceGroupName] The name of the resource group.
  GetNspAccessRuleArgs({
    required this.accessRuleName,
    required this.networkSecurityPerimeterName,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRuleName': accessRuleName,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNspAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetNspAccessRuleArgs(
      accessRuleName: (map['accessRuleName'] as String).input(),
      networkSecurityPerimeterName: (map['networkSecurityPerimeterName'] as String).input(),
      profileName: (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

