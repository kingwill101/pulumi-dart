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
  const GetFirewallPolicyDraftResult({
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
      'basePolicy': ?basePolicy?.toMap(),
      'dnsSettings': ?dnsSettings?.toMap(),
      'explicitProxy': ?explicitProxy?.toMap(),
      'id': ?id,
      'insights': ?insights?.toMap(),
      'intrusionDetection': ?intrusionDetection?.toMap(),
      'location': ?location,
      'name': name,
      'snat': ?snat?.toMap(),
      'sql': ?sql?.toMap(),
      'tags': ?tags,
      'threatIntelMode': ?threatIntelMode,
      'threatIntelWhitelist': ?threatIntelWhitelist?.toMap(),
      'type': type,
    };
  }

  factory GetFirewallPolicyDraftResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyDraftResult(
      azureApiVersion: map['azureApiVersion'] as String,
      basePolicy: (() { final guardedValue = map['basePolicy']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return DnsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      explicitProxy: (() { final guardedValue = map['explicitProxy']; if (guardedValue == null) return null; return ExplicitProxyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      insights: (() { final guardedValue = map['insights']; if (guardedValue == null) return null; return FirewallPolicyInsightsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      intrusionDetection: (() { final guardedValue = map['intrusionDetection']; if (guardedValue == null) return null; return FirewallPolicyIntrusionDetectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      snat: (() { final guardedValue = map['snat']; if (guardedValue == null) return null; return FirewallPolicySNATResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sql: (() { final guardedValue = map['sql']; if (guardedValue == null) return null; return FirewallPolicySQLResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      threatIntelMode: (() { final guardedValue = map['threatIntelMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      threatIntelWhitelist: (() { final guardedValue = map['threatIntelWhitelist']; if (guardedValue == null) return null; return FirewallPolicyThreatIntelWhitelistResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: map['type'] as String,
    );
  }
}

