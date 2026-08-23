// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FrontdoorRuleSet resources.
class FrontdoorRuleSetState {
  /// The ID of the Front Door Profile. Changing this forces a new Front Door Rule Set to be created.
  final pulumi.Input<String>? cdnFrontdoorProfileId;
  /// The name which should be used for this Front Door Rule Set. Changing this forces a new Front Door Rule Set to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [FrontdoorRuleSetState].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile. Changing this forces a new Front Door Rule Set to be created.
  /// [name] The name which should be used for this Front Door Rule Set. Changing this forces a new Front Door Rule Set to be created.
  const FrontdoorRuleSetState({
    this.cdnFrontdoorProfileId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': ?cdnFrontdoorProfileId,
      'name': ?name,
    };
  }

  factory FrontdoorRuleSetState.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleSetState(
      cdnFrontdoorProfileId: (() { final guardedValue = map['cdnFrontdoorProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
