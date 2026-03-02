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
  /// A `explicit_proxy` block as defined below.
  final pulumi.Input<FirewallPolicyExplicitProxy>? explicitProxy;
  /// An `identity` block as defined below.
  final pulumi.Input<FirewallPolicyIdentity>? identity;
  /// An `insights` block as defined below.
  final pulumi.Input<FirewallPolicyInsights>? insights;
  /// A `intrusion_detection` block as defined below.
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
  /// A `threat_intelligence_allowlist` block as defined below.
  final pulumi.Input<FirewallPolicyThreatIntelligenceAllowlist>? threatIntelligenceAllowlist;
  /// The operation mode for Threat Intelligence. Possible values are `Alert`, `Deny` and `Off`. Defaults to `Alert`.
  final pulumi.Input<String>? threatIntelligenceMode;
  /// A `tls_certificate` block as defined below.
  final pulumi.Input<FirewallPolicyTlsCertificate>? tlsCertificate;

  /// Creates a new [FirewallPolicyArgs].
  /// [autoLearnPrivateRangesEnabled] Whether enable auto learn private ip range.
  /// [basePolicyId] The ID of the base Firewall Policy.
  /// [dns] A `dns` block as defined below.
  /// [explicitProxy] A `explicit_proxy` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [insights] An `insights` block as defined below.
  /// [intrusionDetection] A `intrusion_detection` block as defined below.
  /// [location] The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
  /// [name] The name which should be used for this Firewall Policy. Changing this forces a new Firewall Policy to be created.
  /// [privateIpRanges] A list of private IP ranges to which traffic will not be SNAT.
  /// [resourceGroupName] The name of the Resource Group where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
  /// [sku] The SKU Tier of the Firewall Policy. Possible values are `Standard`, `Premium` and `Basic`. Defaults to `Standard`. Changing this forces a new Firewall Policy to be created.
  /// [sqlRedirectAllowed] Whether SQL Redirect traffic filtering is allowed. Enabling this flag requires no rule using ports between `11000`-`11999`.
  /// [tags] A mapping of tags which should be assigned to the Firewall Policy.
  /// [threatIntelligenceAllowlist] A `threat_intelligence_allowlist` block as defined below.
  /// [threatIntelligenceMode] The operation mode for Threat Intelligence. Possible values are `Alert`, `Deny` and `Off`. Defaults to `Alert`.
  /// [tlsCertificate] A `tls_certificate` block as defined below.
  FirewallPolicyArgs({
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
      autoLearnPrivateRangesEnabled: map['autoLearnPrivateRangesEnabled'] == null ? null : (map['autoLearnPrivateRangesEnabled']! as bool).input(),
      basePolicyId: map['basePolicyId'] == null ? null : (map['basePolicyId']! as String).input(),
      dns: map['dns'] == null ? null : (FirewallPolicyDns.fromMap((map['dns']! as Map).cast<String, dynamic>())).input(),
      explicitProxy: map['explicitProxy'] == null ? null : (FirewallPolicyExplicitProxy.fromMap((map['explicitProxy']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (FirewallPolicyIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      insights: map['insights'] == null ? null : (FirewallPolicyInsights.fromMap((map['insights']! as Map).cast<String, dynamic>())).input(),
      intrusionDetection: map['intrusionDetection'] == null ? null : (FirewallPolicyIntrusionDetection.fromMap((map['intrusionDetection']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateIpRanges: map['privateIpRanges'] == null ? null : ((map['privateIpRanges']! as List).cast<String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      sqlRedirectAllowed: map['sqlRedirectAllowed'] == null ? null : (map['sqlRedirectAllowed']! as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      threatIntelligenceAllowlist: map['threatIntelligenceAllowlist'] == null ? null : (FirewallPolicyThreatIntelligenceAllowlist.fromMap((map['threatIntelligenceAllowlist']! as Map).cast<String, dynamic>())).input(),
      threatIntelligenceMode: map['threatIntelligenceMode'] == null ? null : (map['threatIntelligenceMode']! as String).input(),
      tlsCertificate: map['tlsCertificate'] == null ? null : (FirewallPolicyTlsCertificate.fromMap((map['tlsCertificate']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

