// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_settings.dart';
import 'explicit_proxy.dart';
import 'firewall_policy_insights.dart';
import 'firewall_policy_intrusion_detection.dart';
import 'firewall_policy_snat.dart';
import 'firewall_policy_sql.dart';
import 'firewall_policy_threat_intel_whitelist.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_firewall_policy_draft_args_doc}
/// The set of arguments for FirewallPolicyDraft.
/// {@endtemplate}
/// {@macro pulumi_network_firewall_policy_draft_args_doc}
class FirewallPolicyDraftArgs {
  /// The parent firewall policy from which rules are inherited.
  final pulumi.Input<SubResource>? basePolicy;
  /// DNS Proxy Settings definition.
  final pulumi.Input<DnsSettings>? dnsSettings;
  /// Explicit Proxy Settings definition.
  final pulumi.Input<ExplicitProxy>? explicitProxy;
  /// The name of the Firewall Policy.
  final pulumi.Input<String> firewallPolicyName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Insights on Firewall Policy.
  final pulumi.Input<FirewallPolicyInsights>? insights;
  /// The configuration for Intrusion detection.
  final pulumi.Input<FirewallPolicyIntrusionDetection>? intrusionDetection;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The private IP addresses/IP ranges to which traffic will not be SNAT.
  final pulumi.Input<FirewallPolicySNAT>? snat;
  /// SQL Settings definition.
  final pulumi.Input<FirewallPolicySQL>? sql;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The operation mode for Threat Intelligence.
  final pulumi.Input<String>? threatIntelMode;
  /// ThreatIntel Whitelist for Firewall Policy.
  final pulumi.Input<FirewallPolicyThreatIntelWhitelist>? threatIntelWhitelist;

  /// Creates a new [FirewallPolicyDraftArgs].
  /// [basePolicy] The parent firewall policy from which rules are inherited.
  /// [dnsSettings] DNS Proxy Settings definition.
  /// [explicitProxy] Explicit Proxy Settings definition.
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [id] Resource ID.
  /// [insights] Insights on Firewall Policy.
  /// [intrusionDetection] The configuration for Intrusion detection.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [snat] The private IP addresses/IP ranges to which traffic will not be SNAT.
  /// [sql] SQL Settings definition.
  /// [tags] Resource tags.
  /// [threatIntelMode] The operation mode for Threat Intelligence.
  /// [threatIntelWhitelist] ThreatIntel Whitelist for Firewall Policy.
  FirewallPolicyDraftArgs({
    pulumi.Output<SubResource>? basePolicy,
    pulumi.Output<DnsSettings>? dnsSettings,
    pulumi.Output<ExplicitProxy>? explicitProxy,
    required pulumi.Output<String> firewallPolicyName,
    pulumi.Output<String>? id,
    pulumi.Output<FirewallPolicyInsights>? insights,
    pulumi.Output<FirewallPolicyIntrusionDetection>? intrusionDetection,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<FirewallPolicySNAT>? snat,
    pulumi.Output<FirewallPolicySQL>? sql,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? threatIntelMode,
    pulumi.Output<FirewallPolicyThreatIntelWhitelist>? threatIntelWhitelist,
  }) :
      basePolicy = pulumi.Input.asOptionalInput<SubResource>(basePolicy),
      dnsSettings = pulumi.Input.asOptionalInput<DnsSettings>(dnsSettings),
      explicitProxy = pulumi.Input.asOptionalInput<ExplicitProxy>(explicitProxy),
      firewallPolicyName = pulumi.Input.asInput<String>(firewallPolicyName),
      id = pulumi.Input.asOptionalInput<String>(id),
      insights = pulumi.Input.asOptionalInput<FirewallPolicyInsights>(insights),
      intrusionDetection = pulumi.Input.asOptionalInput<FirewallPolicyIntrusionDetection>(intrusionDetection),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      snat = pulumi.Input.asOptionalInput<FirewallPolicySNAT>(snat),
      sql = pulumi.Input.asOptionalInput<FirewallPolicySQL>(sql),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      threatIntelMode = pulumi.Input.asOptionalInput<String>(threatIntelMode),
      threatIntelWhitelist = pulumi.Input.asOptionalInput<FirewallPolicyThreatIntelWhitelist>(threatIntelWhitelist);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePolicy': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(basePolicy, (value) => value.toMap()),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<DnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'explicitProxy': ?pulumi.Input.mapOptionalInputValue<ExplicitProxy, Map<String, dynamic>>(explicitProxy, (value) => value.toMap()),
      'firewallPolicyName': firewallPolicyName,
      'id': ?id,
      'insights': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyInsights, Map<String, dynamic>>(insights, (value) => value.toMap()),
      'intrusionDetection': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyIntrusionDetection, Map<String, dynamic>>(intrusionDetection, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'snat': ?pulumi.Input.mapOptionalInputValue<FirewallPolicySNAT, Map<String, dynamic>>(snat, (value) => value.toMap()),
      'sql': ?pulumi.Input.mapOptionalInputValue<FirewallPolicySQL, Map<String, dynamic>>(sql, (value) => value.toMap()),
      'tags': ?tags,
      'threatIntelMode': ?threatIntelMode,
      'threatIntelWhitelist': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyThreatIntelWhitelist, Map<String, dynamic>>(threatIntelWhitelist, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyDraftArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyDraftArgs(
      basePolicy: map['basePolicy'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['basePolicy'] as Map).cast<String, dynamic>())),
      dnsSettings: map['dnsSettings'] == null ? null : pulumi.Output.create<DnsSettings>(DnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())),
      explicitProxy: map['explicitProxy'] == null ? null : pulumi.Output.create<ExplicitProxy>(ExplicitProxy.fromMap((map['explicitProxy'] as Map).cast<String, dynamic>())),
      firewallPolicyName: pulumi.Output.create<String>(map['firewallPolicyName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      insights: map['insights'] == null ? null : pulumi.Output.create<FirewallPolicyInsights>(FirewallPolicyInsights.fromMap((map['insights'] as Map).cast<String, dynamic>())),
      intrusionDetection: map['intrusionDetection'] == null ? null : pulumi.Output.create<FirewallPolicyIntrusionDetection>(FirewallPolicyIntrusionDetection.fromMap((map['intrusionDetection'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      snat: map['snat'] == null ? null : pulumi.Output.create<FirewallPolicySNAT>(FirewallPolicySNAT.fromMap((map['snat'] as Map).cast<String, dynamic>())),
      sql: map['sql'] == null ? null : pulumi.Output.create<FirewallPolicySQL>(FirewallPolicySQL.fromMap((map['sql'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      threatIntelMode: map['threatIntelMode'] == null ? null : pulumi.Output.create<String>(map['threatIntelMode'] as String),
      threatIntelWhitelist: map['threatIntelWhitelist'] == null ? null : pulumi.Output.create<FirewallPolicyThreatIntelWhitelist>(FirewallPolicyThreatIntelWhitelist.fromMap((map['threatIntelWhitelist'] as Map).cast<String, dynamic>())),
    );
  }
}

