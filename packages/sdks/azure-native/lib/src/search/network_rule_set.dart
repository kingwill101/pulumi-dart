// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_rule.dart';

/// Network specific rules that determine how the Azure AI Search service may be reached.
class NetworkRuleSet {
  /// Possible origins of inbound traffic that can bypass the rules defined in the 'ipRules' section.
  final pulumi.Input<String>? bypass;
  /// A list of IP restriction rules that defines the inbound network(s) with allowing access to the search service endpoint. At the meantime, all other public IP networks are blocked by the firewall. These restriction rules are applied only when the 'publicNetworkAccess' of the search service is 'enabled'; otherwise, traffic over public interface is not allowed even with any public IP rules, and private endpoint connections would be the exclusive access method.
  final pulumi.Input<List<IpRule>>? ipRules;

  /// Creates a new [NetworkRuleSet].
  /// [bypass] Possible origins of inbound traffic that can bypass the rules defined in the 'ipRules' section.
  /// [ipRules] A list of IP restriction rules that defines the inbound network(s) with allowing access to the search service endpoint. At the meantime, all other public IP networks are blocked by the firewall. These restriction rules are applied only when the 'publicNetworkAccess' of the search service is 'enabled'; otherwise, traffic over public interface is not allowed even with any public IP rules, and private endpoint connections would be the exclusive access method.
  NetworkRuleSet({
    this.bypass,
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': ?bypass,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IpRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkRuleSet.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSet(
      bypass: (() { final guardedValue = map['bypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpRule>(guardedValue, (value) => IpRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

