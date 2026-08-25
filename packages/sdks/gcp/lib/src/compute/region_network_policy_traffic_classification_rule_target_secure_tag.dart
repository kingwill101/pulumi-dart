// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final pulumi.Input<String?>? name;
  /// (Output)
  /// State of the secure tag, either EFFECTIVE or INEFFECTIVE. A secure tag is INEFFECTIVE when it is deleted or its network is deleted.
  final pulumi.Input<String?>? state;

  /// Creates a new [RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  /// [state] (Output)
  const RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'state': ?state,
    };
  }

  factory RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag.fromMap(Map<String, dynamic> map) {
    return RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
