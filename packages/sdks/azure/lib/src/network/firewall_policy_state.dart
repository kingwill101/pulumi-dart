// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_dns.dart';
import 'firewall_policy_explicit_proxy.dart';
import 'firewall_policy_identity.dart';
import 'firewall_policy_insights.dart';
import 'firewall_policy_intrusion_detection.dart';
import 'firewall_policy_threat_intelligence_allowlist.dart';
import 'firewall_policy_tls_certificate.dart';

/// Input properties used for looking up and filtering FirewallPolicy resources.
class FirewallPolicyState {
  /// Whether enable auto learn private ip range.
  final pulumi.Input<bool>? autoLearnPrivateRangesEnabled;

  /// The ID of the base Firewall Policy.
  final pulumi.Input<String>? basePolicyId;

  /// A list of reference to child Firewall Policies of this Firewall Policy.
  final pulumi.Input<List<String>>? childPolicies;

  /// A `dns` block as defined below.
  final pulumi.Input<FirewallPolicyDns>? dns;

  /// A `explicit_proxy` block as defined below.
  final pulumi.Input<FirewallPolicyExplicitProxy>? explicitProxy;

  /// A list of references to Azure Firewalls that this Firewall Policy is associated with.
  final pulumi.Input<List<String>>? firewalls;

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
  final pulumi.Input<String>? resourceGroupName;

  /// A list of references to Firewall Policy Rule Collection Groups that belongs to this Firewall Policy.
  final pulumi.Input<List<String>>? ruleCollectionGroups;

  /// The SKU Tier of the Firewall Policy. Possible values are `Standard`, `Premium` and `Basic`. Defaults to `Standard`. Changing this forces a new Firewall Policy to be created.
  final pulumi.Input<String>? sku;

  /// Whether SQL Redirect traffic filtering is allowed. Enabling this flag requires no rule using ports between `11000`-`11999`.
  final pulumi.Input<bool>? sqlRedirectAllowed;

  /// A mapping of tags which should be assigned to the Firewall Policy.
  final pulumi.Input<Map<String, String>>? tags;

  /// A `threat_intelligence_allowlist` block as defined below.
  final pulumi.Input<FirewallPolicyThreatIntelligenceAllowlist>?
  threatIntelligenceAllowlist;

  /// The operation mode for Threat Intelligence. Possible values are `Alert`, `Deny` and `Off`. Defaults to `Alert`.
  final pulumi.Input<String>? threatIntelligenceMode;

  /// A `tls_certificate` block as defined below.
  final pulumi.Input<FirewallPolicyTlsCertificate>? tlsCertificate;

  /// Creates a new [FirewallPolicyState].
  /// [autoLearnPrivateRangesEnabled] Whether enable auto learn private ip range.
  /// [basePolicyId] The ID of the base Firewall Policy.
  /// [childPolicies] A list of reference to child Firewall Policies of this Firewall Policy.
  /// [dns] A `dns` block as defined below.
  /// [explicitProxy] A `explicit_proxy` block as defined below.
  /// [firewalls] A list of references to Azure Firewalls that this Firewall Policy is associated with.
  /// [identity] An `identity` block as defined below.
  /// [insights] An `insights` block as defined below.
  /// [intrusionDetection] A `intrusion_detection` block as defined below.
  /// [location] The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
  /// [name] The name which should be used for this Firewall Policy. Changing this forces a new Firewall Policy to be created.
  /// [privateIpRanges] A list of private IP ranges to which traffic will not be SNAT.
  /// [resourceGroupName] The name of the Resource Group where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
  /// [ruleCollectionGroups] A list of references to Firewall Policy Rule Collection Groups that belongs to this Firewall Policy.
  /// [sku] The SKU Tier of the Firewall Policy. Possible values are `Standard`, `Premium` and `Basic`. Defaults to `Standard`. Changing this forces a new Firewall Policy to be created.
  /// [sqlRedirectAllowed] Whether SQL Redirect traffic filtering is allowed. Enabling this flag requires no rule using ports between `11000`-`11999`.
  /// [tags] A mapping of tags which should be assigned to the Firewall Policy.
  /// [threatIntelligenceAllowlist] A `threat_intelligence_allowlist` block as defined below.
  /// [threatIntelligenceMode] The operation mode for Threat Intelligence. Possible values are `Alert`, `Deny` and `Off`. Defaults to `Alert`.
  /// [tlsCertificate] A `tls_certificate` block as defined below.
  FirewallPolicyState({
    this.autoLearnPrivateRangesEnabled,
    this.basePolicyId,
    this.childPolicies,
    this.dns,
    this.explicitProxy,
    this.firewalls,
    this.identity,
    this.insights,
    this.intrusionDetection,
    this.location,
    this.name,
    this.privateIpRanges,
    this.resourceGroupName,
    this.ruleCollectionGroups,
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
      'childPolicies': ?childPolicies,
      'dns':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicyDns,
            Map<String, dynamic>
          >(dns, (value) => value.toMap()),
      'explicitProxy':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicyExplicitProxy,
            Map<String, dynamic>
          >(explicitProxy, (value) => value.toMap()),
      'firewalls': ?firewalls,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicyIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
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
      'name': ?name,
      'privateIpRanges': ?privateIpRanges,
      'resourceGroupName': ?resourceGroupName,
      'ruleCollectionGroups': ?ruleCollectionGroups,
      'sku': ?sku,
      'sqlRedirectAllowed': ?sqlRedirectAllowed,
      'tags': ?tags,
      'threatIntelligenceAllowlist':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicyThreatIntelligenceAllowlist,
            Map<String, dynamic>
          >(threatIntelligenceAllowlist, (value) => value.toMap()),
      'threatIntelligenceMode': ?threatIntelligenceMode,
      'tlsCertificate':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicyTlsCertificate,
            Map<String, dynamic>
          >(tlsCertificate, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyState.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyState(
      autoLearnPrivateRangesEnabled: (() {
        final guardedValue = map['autoLearnPrivateRangesEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      basePolicyId: (() {
        final guardedValue = map['basePolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      childPolicies: (() {
        final guardedValue = map['childPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      dns: (() {
        final guardedValue = map['dns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicyDns.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      explicitProxy: (() {
        final guardedValue = map['explicitProxy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicyExplicitProxy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      firewalls: (() {
        final guardedValue = map['firewalls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicyIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIpRanges: (() {
        final guardedValue = map['privateIpRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleCollectionGroups: (() {
        final guardedValue = map['ruleCollectionGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlRedirectAllowed: (() {
        final guardedValue = map['sqlRedirectAllowed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      threatIntelligenceAllowlist: (() {
        final guardedValue = map['threatIntelligenceAllowlist'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicyThreatIntelligenceAllowlist.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      threatIntelligenceMode: (() {
        final guardedValue = map['threatIntelligenceMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tlsCertificate: (() {
        final guardedValue = map['tlsCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicyTlsCertificate.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
