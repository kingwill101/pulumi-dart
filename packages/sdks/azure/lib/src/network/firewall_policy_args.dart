// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_dns.dart';
import 'firewall_policy_explicit_proxy.dart';
import 'firewall_policy_identity.dart';
import 'firewall_policy_insights.dart';
import 'firewall_policy_intrusion_detection.dart';
import 'firewall_policy_threat_intelligence_allowlist.dart';
import 'firewall_policy_tls_certificate.dart';

/// {@template pulumi_network_firewall_policy_firewall_policy_args_doc}
/// The set of arguments for FirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_firewall_policy_firewall_policy_args_doc}
class FirewallPolicyArgs {
  /// Whether enable auto learn private ip range.
  final pulumi.Input<bool>? autoLearnPrivateRangesEnabled;
  /// The ID of the base Firewall Policy.
  final pulumi.Input<String>? basePolicyId;
  /// A `dns` block as defined below.
  final pulumi.Input<FirewallPolicyDns>? dns;
  /// A `explicitProxy` block as defined below.
  final pulumi.Input<FirewallPolicyExplicitProxy>? explicitProxy;
  /// An `identity` block as defined below.
  final pulumi.Input<FirewallPolicyIdentity>? identity;
  /// An `insights` block as defined below.
  final pulumi.Input<FirewallPolicyInsights>? insights;
  /// A `intrusionDetection` block as defined below.
  final pulumi.Input<FirewallPolicyIntrusionDetection>? intrusionDetection;
  /// The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Firewall Policy. Changing this forces a new Firewall Policy to be created.
  final pulumi.Input<String>? name;
  /// A list of private IP ranges to which traffic will not be SNAT.
  final pulumi.Input<List<String>>? privateIpRanges;
  /// The name of the Resource Group where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU Tier of the Firewall Policy. Possible values are `Standard`, `Premium` and `Basic`. Defaults to `Standard`. Changing this forces a new Firewall Policy to be created.
  final pulumi.Input<String>? sku;
  /// Whether SQL Redirect traffic filtering is allowed. Enabling this flag requires no rule using ports between `11000`-`11999`.
  final pulumi.Input<bool>? sqlRedirectAllowed;
  /// A mapping of tags which should be assigned to the Firewall Policy.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `threatIntelligenceAllowlist` block as defined below.
  final pulumi.Input<FirewallPolicyThreatIntelligenceAllowlist>? threatIntelligenceAllowlist;
  /// The operation mode for Threat Intelligence. Possible values are `Alert`, `Deny` and `Off`. Defaults to `Alert`.
  final pulumi.Input<String>? threatIntelligenceMode;
  /// A `tlsCertificate` block as defined below.
  final pulumi.Input<FirewallPolicyTlsCertificate>? tlsCertificate;

  /// Creates a new [FirewallPolicyArgs].
  /// [autoLearnPrivateRangesEnabled] Whether enable auto learn private ip range.
  /// [basePolicyId] The ID of the base Firewall Policy.
  /// [dns] A `dns` block as defined below.
  /// [explicitProxy] A `explicitProxy` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [insights] An `insights` block as defined below.
  /// [intrusionDetection] A `intrusionDetection` block as defined below.
  /// [location] The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
  /// [name] The name which should be used for this Firewall Policy. Changing this forces a new Firewall Policy to be created.
  /// [privateIpRanges] A list of private IP ranges to which traffic will not be SNAT.
  /// [resourceGroupName] The name of the Resource Group where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
  /// [sku] The SKU Tier of the Firewall Policy. Possible values are `Standard`, `Premium` and `Basic`. Defaults to `Standard`. Changing this forces a new Firewall Policy to be created.
  /// [sqlRedirectAllowed] Whether SQL Redirect traffic filtering is allowed. Enabling this flag requires no rule using ports between `11000`-`11999`.
  /// [tags] A mapping of tags which should be assigned to the Firewall Policy.
  /// [threatIntelligenceAllowlist] A `threatIntelligenceAllowlist` block as defined below.
  /// [threatIntelligenceMode] The operation mode for Threat Intelligence. Possible values are `Alert`, `Deny` and `Off`. Defaults to `Alert`.
  /// [tlsCertificate] A `tlsCertificate` block as defined below.
  const FirewallPolicyArgs({
    this.autoLearnPrivateRangesEnabled,
    this.basePolicyId,
    this.dns,
    this.explicitProxy,
    this.identity,
    this.insights,
    this.intrusionDetection,
    this.location,
    this.name,
    this.privateIpRanges,
    required this.resourceGroupName,
    this.sku,
    this.sqlRedirectAllowed,
    this.tags,
    this.threatIntelligenceAllowlist,
    this.threatIntelligenceMode,
    this.tlsCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoLearnPrivateRangesEnabled': ?autoLearnPrivateRangesEnabled,
      'basePolicyId': ?basePolicyId,
      'dns': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'explicitProxy': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyExplicitProxy, Map<String, dynamic>>(explicitProxy, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'insights': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyInsights, Map<String, dynamic>>(insights, (value) => value.toMap()),
      'intrusionDetection': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyIntrusionDetection, Map<String, dynamic>>(intrusionDetection, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'privateIpRanges': ?privateIpRanges,
      'resourceGroupName': resourceGroupName,
      'sku': ?sku,
      'sqlRedirectAllowed': ?sqlRedirectAllowed,
      'tags': ?tags,
      'threatIntelligenceAllowlist': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyThreatIntelligenceAllowlist, Map<String, dynamic>>(threatIntelligenceAllowlist, (value) => value.toMap()),
      'threatIntelligenceMode': ?threatIntelligenceMode,
      'tlsCertificate': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyTlsCertificate, Map<String, dynamic>>(tlsCertificate, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyArgs(
      autoLearnPrivateRangesEnabled: (() { final guardedValue = map['autoLearnPrivateRangesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      basePolicyId: (() { final guardedValue = map['basePolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyDns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      explicitProxy: (() { final guardedValue = map['explicitProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyExplicitProxy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      insights: (() { final guardedValue = map['insights']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyInsights.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intrusionDetection: (() { final guardedValue = map['intrusionDetection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyIntrusionDetection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpRanges: (() { final guardedValue = map['privateIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlRedirectAllowed: (() { final guardedValue = map['sqlRedirectAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      threatIntelligenceAllowlist: (() { final guardedValue = map['threatIntelligenceAllowlist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyThreatIntelligenceAllowlist.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      threatIntelligenceMode: (() { final guardedValue = map['threatIntelligenceMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsCertificate: (() { final guardedValue = map['tlsCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyTlsCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
