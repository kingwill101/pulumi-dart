// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_settings.dart';
import 'explicit_proxy.dart';
import 'firewall_policy_insights.dart';
import 'firewall_policy_intrusion_detection.dart';
import 'firewall_policy_sku.dart';
import 'firewall_policy_snat.dart';
import 'firewall_policy_sql.dart';
import 'firewall_policy_threat_intel_whitelist.dart';
import 'firewall_policy_transport_security.dart';
import 'managed_service_identity.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_firewall_policy_args_doc}
/// The set of arguments for FirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_firewall_policy_args_doc}
class FirewallPolicyArgs {
  /// The parent firewall policy from which rules are inherited.
  final pulumi.Input<SubResource>? basePolicy;

  /// DNS Proxy Settings definition.
  final pulumi.Input<DnsSettings>? dnsSettings;

  /// Explicit Proxy Settings definition.
  final pulumi.Input<ExplicitProxy>? explicitProxy;

  /// The name of the Firewall Policy.
  final pulumi.Input<String>? firewallPolicyName;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// The identity of the firewall policy.
  final pulumi.Input<ManagedServiceIdentity>? identity;

  /// Insights on Firewall Policy.
  final pulumi.Input<FirewallPolicyInsights>? insights;

  /// The configuration for Intrusion detection.
  final pulumi.Input<FirewallPolicyIntrusionDetection>? intrusionDetection;

  /// Resource location.
  final pulumi.Input<String>? location;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The Firewall Policy SKU.
  final pulumi.Input<FirewallPolicySku>? sku;

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

  /// TLS Configuration definition.
  final pulumi.Input<FirewallPolicyTransportSecurity>? transportSecurity;

  /// Creates a new [FirewallPolicyArgs].
  /// [basePolicy] The parent firewall policy from which rules are inherited.
  /// [dnsSettings] DNS Proxy Settings definition.
  /// [explicitProxy] Explicit Proxy Settings definition.
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [id] Resource ID.
  /// [identity] The identity of the firewall policy.
  /// [insights] Insights on Firewall Policy.
  /// [intrusionDetection] The configuration for Intrusion detection.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [sku] The Firewall Policy SKU.
  /// [snat] The private IP addresses/IP ranges to which traffic will not be SNAT.
  /// [sql] SQL Settings definition.
  /// [tags] Resource tags.
  /// [threatIntelMode] The operation mode for Threat Intelligence.
  /// [threatIntelWhitelist] ThreatIntel Whitelist for Firewall Policy.
  /// [transportSecurity] TLS Configuration definition.
  FirewallPolicyArgs({
    this.basePolicy,
    this.dnsSettings,
    this.explicitProxy,
    this.firewallPolicyName,
    this.id,
    this.identity,
    this.insights,
    this.intrusionDetection,
    this.location,
    required this.resourceGroupName,
    this.sku,
    this.snat,
    this.sql,
    this.tags,
    this.threatIntelMode,
    this.threatIntelWhitelist,
    this.transportSecurity,
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
      'firewallPolicyName': ?firewallPolicyName,
      'id': ?id,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
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
      'resourceGroupName': resourceGroupName,
      'sku':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicySku,
            Map<String, dynamic>
          >(sku, (value) => value.toMap()),
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
      'transportSecurity':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicyTransportSecurity,
            Map<String, dynamic>
          >(transportSecurity, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyArgs(
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
      firewallPolicyName: (() {
        final guardedValue = map['firewallPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
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
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicySku.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
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
      transportSecurity: (() {
        final guardedValue = map['transportSecurity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicyTransportSecurity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
