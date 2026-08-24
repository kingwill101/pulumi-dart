// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_rule_rule_settings_dns_resolvers_ipv4.dart';
import 'teams_rule_rule_settings_dns_resolvers_ipv6.dart';

class TeamsRuleRuleSettingsDnsResolvers {
  final pulumi.Input<List<TeamsRuleRuleSettingsDnsResolversIpv4>?>? ipv4s;
  final pulumi.Input<List<TeamsRuleRuleSettingsDnsResolversIpv6>?>? ipv6s;

  /// Creates a new [TeamsRuleRuleSettingsDnsResolvers].
  /// [ipv4s] Optional.
  /// [ipv6s] Optional.
  const TeamsRuleRuleSettingsDnsResolvers({
    this.ipv4s,
    this.ipv6s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4s': ?pulumi.Input.mapOptionalInputValue<List<TeamsRuleRuleSettingsDnsResolversIpv4>, List<Map<String, dynamic>>>(ipv4s, (value) => pulumi.Input.encodeList<TeamsRuleRuleSettingsDnsResolversIpv4, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6s': ?pulumi.Input.mapOptionalInputValue<List<TeamsRuleRuleSettingsDnsResolversIpv6>, List<Map<String, dynamic>>>(ipv6s, (value) => pulumi.Input.encodeList<TeamsRuleRuleSettingsDnsResolversIpv6, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TeamsRuleRuleSettingsDnsResolvers.fromMap(Map<String, dynamic> map) {
    return TeamsRuleRuleSettingsDnsResolvers(
      ipv4s: (() { final guardedValue = map['ipv4s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TeamsRuleRuleSettingsDnsResolversIpv4>(guardedValue, (value) => TeamsRuleRuleSettingsDnsResolversIpv4.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6s: (() { final guardedValue = map['ipv6s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TeamsRuleRuleSettingsDnsResolversIpv6>(guardedValue, (value) => TeamsRuleRuleSettingsDnsResolversIpv6.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
