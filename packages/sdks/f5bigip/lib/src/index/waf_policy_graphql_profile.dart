// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_policy_graphql_profile_defense_attribute.dart';

class WafPolicyGraphqlProfile {
  /// Specifies when checked (enabled) that you want attack signatures and threat campaigns to be detected on this GraphQL profile and possibly override the security policy settings of an attack signature or threat campaign specifically for this GraphQL profile. After you enable this setting, the system displays a list of attack signatures and and threat campaigns. The default is enabled
  final pulumi.Input<bool>? attackSignaturesCheck;
  /// defense_attributes settings for policy
  final pulumi.Input<List<WafPolicyGraphqlProfileDefenseAttribute>>? defenseAttributes;
  /// Specifies when checked (enabled) that the system enforces the security policy settings of a meta character for the GraphQL profile. After you enable this setting, the system displays a list of meta characters. The default is enabled
  final pulumi.Input<bool>? metacharElementcheck;
  /// The unique user-given name of the policy. Policy names cannot contain spaces or special characters. Allowed characters are a-z, A-Z, 0-9, dot, dash (-), colon (:) and underscore (_).
  final pulumi.Input<String> name;

  /// Creates a new [WafPolicyGraphqlProfile].
  /// [attackSignaturesCheck] Specifies when checked (enabled) that you want attack signatures and threat campaigns to be detected on this GraphQL profile and possibly override the security policy settings of an attack signature or threat campaign specifically for this GraphQL profile. After you enable this setting, the system displays a list of attack signatures and and threat campaigns. The default is enabled
  /// [defenseAttributes] defense_attributes settings for policy
  /// [metacharElementcheck] Specifies when checked (enabled) that the system enforces the security policy settings of a meta character for the GraphQL profile. After you enable this setting, the system displays a list of meta characters. The default is enabled
  /// [name] The unique user-given name of the policy. Policy names cannot contain spaces or special characters. Allowed characters are a-z, A-Z, 0-9, dot, dash (-), colon (:) and underscore (_).
  WafPolicyGraphqlProfile({
    this.attackSignaturesCheck,
    this.defenseAttributes,
    this.metacharElementcheck,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attackSignaturesCheck': ?attackSignaturesCheck,
      'defenseAttributes': ?pulumi.Input.mapOptionalInputValue<List<WafPolicyGraphqlProfileDefenseAttribute>, List<Map<String, dynamic>>>(defenseAttributes, (value) => pulumi.Input.encodeList<WafPolicyGraphqlProfileDefenseAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metacharElementcheck': ?metacharElementcheck,
      'name': name,
    };
  }

  factory WafPolicyGraphqlProfile.fromMap(Map<String, dynamic> map) {
    return WafPolicyGraphqlProfile(
      attackSignaturesCheck: map['attackSignaturesCheck'] == null ? null : (map['attackSignaturesCheck'] as bool).input(),
      defenseAttributes: map['defenseAttributes'] == null ? null : (pulumi.Input.decodeList<WafPolicyGraphqlProfileDefenseAttribute>(map['defenseAttributes'], (value) => WafPolicyGraphqlProfileDefenseAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metacharElementcheck: map['metacharElementcheck'] == null ? null : (map['metacharElementcheck'] as bool).input(),
      name: (map['name'] as String).input(),
    );
  }
}

