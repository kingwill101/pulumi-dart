// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_frontdoor_rule_set_frontdoor_rule_set_args_doc}
/// The set of arguments for FrontdoorRuleSet.
/// {@endtemplate}
/// {@macro pulumi_cdn_frontdoor_rule_set_frontdoor_rule_set_args_doc}
class FrontdoorRuleSetArgs {
  /// The ID of the Front Door Profile. Changing this forces a new Front Door Rule Set to be created.
  final pulumi.Input<String> cdnFrontdoorProfileId;

  /// The name which should be used for this Front Door Rule Set. Changing this forces a new Front Door Rule Set to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [FrontdoorRuleSetArgs].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile. Changing this forces a new Front Door Rule Set to be created.
  /// [name] The name which should be used for this Front Door Rule Set. Changing this forces a new Front Door Rule Set to be created.
  FrontdoorRuleSetArgs({required this.cdnFrontdoorProfileId, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': cdnFrontdoorProfileId,
      'name': ?name,
    };
  }

  factory FrontdoorRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleSetArgs(
      cdnFrontdoorProfileId: pulumi.Input.fromValue(
        map['cdnFrontdoorProfileId'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
