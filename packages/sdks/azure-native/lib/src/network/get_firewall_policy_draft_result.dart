// ignore_for_file: unused_element, unnecessary_cast

import 'dns_settings_response.dart';
import 'explicit_proxy_response.dart';
import 'firewall_policy_insights_response.dart';
import 'firewall_policy_intrusion_detection_response.dart';
import 'firewall_policy_snatresponse.dart';
import 'firewall_policy_sqlresponse.dart';
import 'firewall_policy_threat_intel_whitelist_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getFirewallPolicyDraft.
class GetFirewallPolicyDraftResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The parent firewall policy from which rules are inherited.
  final SubResourceResponse? basePolicy;
  /// DNS Proxy Settings definition.
  final DnsSettingsResponse? dnsSettings;
  /// Explicit Proxy Settings definition.
  final ExplicitProxyResponse? explicitProxy;
  /// Resource ID.
  final String? id;
  /// Insights on Firewall Policy.
  final FirewallPolicyInsightsResponse? insights;
  /// The configuration for Intrusion detection.
  final FirewallPolicyIntrusionDetectionResponse? intrusionDetection;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The private IP addresses/IP ranges to which traffic will not be SNAT.
  final FirewallPolicySNATResponse? snat;
  /// SQL Settings definition.
  final FirewallPolicySQLResponse? sql;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The operation mode for Threat Intelligence.
  final String? threatIntelMode;
  /// ThreatIntel Whitelist for Firewall Policy.
  final FirewallPolicyThreatIntelWhitelistResponse? threatIntelWhitelist;
  /// Resource type.
  final String type;

  /// Creates a new [GetFirewallPolicyDraftResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [basePolicy] The parent firewall policy from which rules are inherited.
  /// [dnsSettings] DNS Proxy Settings definition.
  /// [explicitProxy] Explicit Proxy Settings definition.
  /// [id] Resource ID.
  /// [insights] Insights on Firewall Policy.
  /// [intrusionDetection] The configuration for Intrusion detection.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [snat] The private IP addresses/IP ranges to which traffic will not be SNAT.
  /// [sql] SQL Settings definition.
  /// [tags] Resource tags.
  /// [threatIntelMode] The operation mode for Threat Intelligence.
  /// [threatIntelWhitelist] ThreatIntel Whitelist for Firewall Policy.
  /// [type] Resource type.
  GetFirewallPolicyDraftResult({
    required this.azureApiVersion,
    this.basePolicy,
    this.dnsSettings,
    this.explicitProxy,
    this.id,
    this.insights,
    this.intrusionDetection,
    this.location,
    required this.name,
    this.snat,
    this.sql,
    this.tags,
    this.threatIntelMode,
    this.threatIntelWhitelist,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'basePolicy': ?basePolicy == null ? null : basePolicy!.toMap(),
      'dnsSettings': ?dnsSettings == null ? null : dnsSettings!.toMap(),
      'explicitProxy': ?explicitProxy == null ? null : explicitProxy!.toMap(),
      'id': ?id,
      'insights': ?insights == null ? null : insights!.toMap(),
      'intrusionDetection': ?intrusionDetection == null ? null : intrusionDetection!.toMap(),
      'location': ?location,
      'name': name,
      'snat': ?snat == null ? null : snat!.toMap(),
      'sql': ?sql == null ? null : sql!.toMap(),
      'tags': ?tags,
      'threatIntelMode': ?threatIntelMode,
      'threatIntelWhitelist': ?threatIntelWhitelist == null ? null : threatIntelWhitelist!.toMap(),
      'type': type,
    };
  }

  factory GetFirewallPolicyDraftResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyDraftResult(
      azureApiVersion: map['azureApiVersion'] as String,
      basePolicy: map['basePolicy'] == null ? null : SubResourceResponse.fromMap((map['basePolicy']! as Map).cast<String, dynamic>()),
      dnsSettings: map['dnsSettings'] == null ? null : DnsSettingsResponse.fromMap((map['dnsSettings']! as Map).cast<String, dynamic>()),
      explicitProxy: map['explicitProxy'] == null ? null : ExplicitProxyResponse.fromMap((map['explicitProxy']! as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id']! as String,
      insights: map['insights'] == null ? null : FirewallPolicyInsightsResponse.fromMap((map['insights']! as Map).cast<String, dynamic>()),
      intrusionDetection: map['intrusionDetection'] == null ? null : FirewallPolicyIntrusionDetectionResponse.fromMap((map['intrusionDetection']! as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      snat: map['snat'] == null ? null : FirewallPolicySNATResponse.fromMap((map['snat']! as Map).cast<String, dynamic>()),
      sql: map['sql'] == null ? null : FirewallPolicySQLResponse.fromMap((map['sql']! as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      threatIntelMode: map['threatIntelMode'] == null ? null : map['threatIntelMode']! as String,
      threatIntelWhitelist: map['threatIntelWhitelist'] == null ? null : FirewallPolicyThreatIntelWhitelistResponse.fromMap((map['threatIntelWhitelist']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

