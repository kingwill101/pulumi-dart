// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_dn.dart';
import 'get_firewall_policy_threat_intelligence_allowlist.dart';

/// Result data returned by getFirewallPolicy.
class GetFirewallPolicyResult {
  final String? basePolicyId;
  final List<String>? childPolicies;
  final List<GetFirewallPolicyDn>? dns;
  final List<String>? firewalls;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? name;
  final String? resourceGroupName;
  final List<String>? ruleCollectionGroups;
  /// A mapping of tags assigned to the Firewall Policy.
  final Map<String, String>? tags;
  final List<GetFirewallPolicyThreatIntelligenceAllowlist>? threatIntelligenceAllowlists;
  final String? threatIntelligenceMode;

  /// Creates a new [GetFirewallPolicyResult].
  /// [basePolicyId] Optional.
  /// [childPolicies] Optional.
  /// [dns] Optional.
  /// [firewalls] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [ruleCollectionGroups] Optional.
  /// [tags] A mapping of tags assigned to the Firewall Policy.
  /// [threatIntelligenceAllowlists] Optional.
  /// [threatIntelligenceMode] Optional.
  const GetFirewallPolicyResult({
    this.basePolicyId,
    this.childPolicies,
    this.dns,
    this.firewalls,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.ruleCollectionGroups,
    this.tags,
    this.threatIntelligenceAllowlists,
    this.threatIntelligenceMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePolicyId': ?basePolicyId,
      'childPolicies': ?childPolicies,
      'dns': ?(() { final guardedValue = dns; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallPolicyDn, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'firewalls': ?firewalls,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'ruleCollectionGroups': ?ruleCollectionGroups,
      'tags': ?tags,
      'threatIntelligenceAllowlists': ?(() { final guardedValue = threatIntelligenceAllowlists; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallPolicyThreatIntelligenceAllowlist, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'threatIntelligenceMode': ?threatIntelligenceMode,
    };
  }

  factory GetFirewallPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyResult(
      basePolicyId: (() { final guardedValue = map['basePolicyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      childPolicies: (() { final guardedValue = map['childPolicies']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallPolicyDn>(guardedValue, (value) => GetFirewallPolicyDn.fromMap((value as Map).cast<String, dynamic>())); })(),
      firewalls: (() { final guardedValue = map['firewalls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleCollectionGroups: (() { final guardedValue = map['ruleCollectionGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      threatIntelligenceAllowlists: (() { final guardedValue = map['threatIntelligenceAllowlists']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallPolicyThreatIntelligenceAllowlist>(guardedValue, (value) => GetFirewallPolicyThreatIntelligenceAllowlist.fromMap((value as Map).cast<String, dynamic>())); })(),
      threatIntelligenceMode: (() { final guardedValue = map['threatIntelligenceMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
