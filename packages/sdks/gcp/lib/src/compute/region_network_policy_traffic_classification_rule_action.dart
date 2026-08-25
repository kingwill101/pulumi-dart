// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionNetworkPolicyTrafficClassificationRuleAction {
  /// DSCP mode. When set to AUTO, the DSCP value will be picked automatically based on selected trafficClass. Otherwise,dscpValue needs to be explicitly specified.
  /// Possible values are: `AUTO`, `CUSTOM`.
  final pulumi.Input<String?>? dscpMode;
  /// Custom DSCP value from 0-63 range.
  final pulumi.Input<int?>? dscpValue;
  /// The traffic class that should be applied to the matching packet.
  /// Possible values are: `TC1`, `TC2`, `TC3`, `TC4`, `TC5`, `TC6`.
  final pulumi.Input<String?>? trafficClass;
  /// Always applyTrafficClassification for Traffic Classification Rules.
  /// Default value is `applyTrafficClassification`.
  /// Possible values are: `applyTrafficClassification`.
  final pulumi.Input<String?>? type;

  /// Creates a new [RegionNetworkPolicyTrafficClassificationRuleAction].
  /// [dscpMode] DSCP mode. When set to AUTO, the DSCP value will be picked automatically based on selected trafficClass. Otherwise,dscpValue needs to be explicitly specified.
  /// [dscpValue] Custom DSCP value from 0-63 range.
  /// [trafficClass] The traffic class that should be applied to the matching packet.
  /// [type] Always applyTrafficClassification for Traffic Classification Rules.
  const RegionNetworkPolicyTrafficClassificationRuleAction({
    this.dscpMode,
    this.dscpValue,
    this.trafficClass,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscpMode': ?dscpMode,
      'dscpValue': ?dscpValue,
      'trafficClass': ?trafficClass,
      'type': ?type,
    };
  }

  factory RegionNetworkPolicyTrafficClassificationRuleAction.fromMap(Map<String, dynamic> map) {
    return RegionNetworkPolicyTrafficClassificationRuleAction(
      dscpMode: (() { final guardedValue = map['dscpMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dscpValue: (() { final guardedValue = map['dscpValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      trafficClass: (() { final guardedValue = map['trafficClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
