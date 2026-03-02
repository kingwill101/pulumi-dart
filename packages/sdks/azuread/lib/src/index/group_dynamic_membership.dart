// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupDynamicMembership {
  /// Whether rule processing is "On" (true) or "Paused" (false).
  final pulumi.Input<bool> enabled;
  /// The rule that determines membership of this group. For more information, see official documentation on [membership rules syntax](https://docs.microsoft.com/en-gb/azure/active-directory/enterprise-users/groups-dynamic-membership).
  ///
  /// > **Dynamic Group Memberships** Remember to include `DynamicMembership` in the set of `types` for the group when configuring a dynamic membership rule. Dynamic membership is a premium feature which requires an Azure Active Directory P1 or P2 license.
  final pulumi.Input<String> rule;

  /// Creates a new [GroupDynamicMembership].
  /// [enabled] Whether rule processing is "On" (true) or "Paused" (false).
  /// [rule] The rule that determines membership of this group. For more information, see official documentation on [membership rules syntax](https://docs.microsoft.com/en-gb/azure/active-directory/enterprise-users/groups-dynamic-membership).
  GroupDynamicMembership({
    required this.enabled,
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rule': rule,
    };
  }

  factory GroupDynamicMembership.fromMap(Map<String, dynamic> map) {
    return GroupDynamicMembership(
      enabled: (map['enabled'] as bool).input(),
      rule: (map['rule'] as String).input(),
    );
  }
}

