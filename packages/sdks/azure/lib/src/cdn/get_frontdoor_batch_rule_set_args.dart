// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_frontdoor_batch_rule_set_get_frontdoor_batch_rule_set_args_doc}
/// Arguments for getFrontdoorBatchRuleSet.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_frontdoor_batch_rule_set_get_frontdoor_batch_rule_set_args_doc}
class GetFrontdoorBatchRuleSetArgs {
  /// The name of the Front Door Batch Rule Set.
  final pulumi.Input<String> name;
  /// The name of the Front Door Profile.
  final pulumi.Input<String> profileName;
  /// The name of the Resource Group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFrontdoorBatchRuleSetArgs].
  /// [name] The name of the Front Door Batch Rule Set.
  /// [profileName] The name of the Front Door Profile.
  /// [resourceGroupName] The name of the Resource Group.
  const GetFrontdoorBatchRuleSetArgs({
    required this.name,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFrontdoorBatchRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
