// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_frontdoor_rule_set_get_frontdoor_rule_set_args_doc}
/// Arguments for getFrontdoorRuleSet.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_frontdoor_rule_set_get_frontdoor_rule_set_args_doc}
class GetFrontdoorRuleSetArgs {
  /// Specifies the name of the Front Door Rule Set to retrieve.
  final pulumi.Input<String> name;
  /// Specifies the name of the Front Door Profile where this Front Door Rule Set exists.
  final pulumi.Input<String> profileName;
  /// Specifies the name of the Resource Group where the Front Door Profile exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFrontdoorRuleSetArgs].
  /// [name] Specifies the name of the Front Door Rule Set to retrieve.
  /// [profileName] Specifies the name of the Front Door Profile where this Front Door Rule Set exists.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Front Door Profile exists.
  GetFrontdoorRuleSetArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFrontdoorRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorRuleSetArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

