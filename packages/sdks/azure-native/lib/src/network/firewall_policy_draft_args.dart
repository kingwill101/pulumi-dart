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
    this.basePolicy,
    this.dnsSettings,
    this.explicitProxy,
    required this.firewallPolicyName,
    this.id,
    this.insights,
    this.intrusionDetection,
    this.location,
    required this.resourceGroupName,
    this.snat,
    this.sql,
    this.tags,
    this.threatIntelMode,
    this.threatIntelWhitelist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            SubResource,
            Map<String, dynamic>
          >(basePolicy, (value) => value.toMap()),
      'dnsSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DnsSettings,
            Map<String, dynamic>
          >(dnsSettings, (value) => value.toMap()),
      'explicitProxy':
          ?pulumi.Input.mapOptionalInputValue<
            ExplicitProxy,
            Map<String, dynamic>
          >(explicitProxy, (value) => value.toMap()),
      'firewallPolicyName': firewallPolicyName,
      'id': ?id,
      'insights':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicyInsights,
            Map<String, dynamic>
          >(insights, (value) => value.toMap()),
      'intrusionDetection':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicyIntrusionDetection,
            Map<String, dynamic>
          >(intrusionDetection, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'snat':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicySNAT,
            Map<String, dynamic>
          >(snat, (value) => value.toMap()),
      'sql':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicySQL,
            Map<String, dynamic>
          >(sql, (value) => value.toMap()),
      'tags': ?tags,
      'threatIntelMode': ?threatIntelMode,
      'threatIntelWhitelist':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicyThreatIntelWhitelist,
            Map<String, dynamic>
          >(threatIntelWhitelist, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyDraftArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyDraftArgs(
      basePolicy: (() {
        final guardedValue = map['basePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResource.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      dnsSettings: (() {
        final guardedValue = map['dnsSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DnsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      explicitProxy: (() {
        final guardedValue = map['explicitProxy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExplicitProxy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      firewallPolicyName: pulumi.Input.fromValue(
        map['firewallPolicyName'] as String,
      ),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      insights: (() {
        final guardedValue = map['insights'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicyInsights.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      intrusionDetection: (() {
        final guardedValue = map['intrusionDetection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicyIntrusionDetection.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      snat: (() {
        final guardedValue = map['snat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicySNAT.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sql: (() {
        final guardedValue = map['sql'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicySQL.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      threatIntelMode: (() {
        final guardedValue = map['threatIntelMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      threatIntelWhitelist: (() {
        final guardedValue = map['threatIntelWhitelist'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicyThreatIntelWhitelist.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
