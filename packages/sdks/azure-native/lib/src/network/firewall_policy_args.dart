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
    pulumi.Output<SubResource>? basePolicy,
    pulumi.Output<DnsSettings>? dnsSettings,
    pulumi.Output<ExplicitProxy>? explicitProxy,
    pulumi.Output<String>? firewallPolicyName,
    pulumi.Output<String>? id,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<FirewallPolicyInsights>? insights,
    pulumi.Output<FirewallPolicyIntrusionDetection>? intrusionDetection,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<FirewallPolicySku>? sku,
    pulumi.Output<FirewallPolicySNAT>? snat,
    pulumi.Output<FirewallPolicySQL>? sql,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? threatIntelMode,
    pulumi.Output<FirewallPolicyThreatIntelWhitelist>? threatIntelWhitelist,
    pulumi.Output<FirewallPolicyTransportSecurity>? transportSecurity,
  }) :
      basePolicy = pulumi.Input.asOptionalInput<SubResource>(basePolicy),
      dnsSettings = pulumi.Input.asOptionalInput<DnsSettings>(dnsSettings),
      explicitProxy = pulumi.Input.asOptionalInput<ExplicitProxy>(explicitProxy),
      firewallPolicyName = pulumi.Input.asOptionalInput<String>(firewallPolicyName),
      id = pulumi.Input.asOptionalInput<String>(id),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      insights = pulumi.Input.asOptionalInput<FirewallPolicyInsights>(insights),
      intrusionDetection = pulumi.Input.asOptionalInput<FirewallPolicyIntrusionDetection>(intrusionDetection),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<FirewallPolicySku>(sku),
      snat = pulumi.Input.asOptionalInput<FirewallPolicySNAT>(snat),
      sql = pulumi.Input.asOptionalInput<FirewallPolicySQL>(sql),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      threatIntelMode = pulumi.Input.asOptionalInput<String>(threatIntelMode),
      threatIntelWhitelist = pulumi.Input.asOptionalInput<FirewallPolicyThreatIntelWhitelist>(threatIntelWhitelist),
      transportSecurity = pulumi.Input.asOptionalInput<FirewallPolicyTransportSecurity>(transportSecurity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePolicy': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(basePolicy, (value) => value.toMap()),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<DnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'explicitProxy': ?pulumi.Input.mapOptionalInputValue<ExplicitProxy, Map<String, dynamic>>(explicitProxy, (value) => value.toMap()),
      'firewallPolicyName': ?firewallPolicyName,
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'insights': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyInsights, Map<String, dynamic>>(insights, (value) => value.toMap()),
      'intrusionDetection': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyIntrusionDetection, Map<String, dynamic>>(intrusionDetection, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<FirewallPolicySku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'snat': ?pulumi.Input.mapOptionalInputValue<FirewallPolicySNAT, Map<String, dynamic>>(snat, (value) => value.toMap()),
      'sql': ?pulumi.Input.mapOptionalInputValue<FirewallPolicySQL, Map<String, dynamic>>(sql, (value) => value.toMap()),
      'tags': ?tags,
      'threatIntelMode': ?threatIntelMode,
      'threatIntelWhitelist': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyThreatIntelWhitelist, Map<String, dynamic>>(threatIntelWhitelist, (value) => value.toMap()),
      'transportSecurity': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyTransportSecurity, Map<String, dynamic>>(transportSecurity, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyArgs(
      basePolicy: map['basePolicy'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['basePolicy'] as Map).cast<String, dynamic>())),
      dnsSettings: map['dnsSettings'] == null ? null : pulumi.Output.create<DnsSettings>(DnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())),
      explicitProxy: map['explicitProxy'] == null ? null : pulumi.Output.create<ExplicitProxy>(ExplicitProxy.fromMap((map['explicitProxy'] as Map).cast<String, dynamic>())),
      firewallPolicyName: map['firewallPolicyName'] == null ? null : pulumi.Output.create<String>(map['firewallPolicyName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      insights: map['insights'] == null ? null : pulumi.Output.create<FirewallPolicyInsights>(FirewallPolicyInsights.fromMap((map['insights'] as Map).cast<String, dynamic>())),
      intrusionDetection: map['intrusionDetection'] == null ? null : pulumi.Output.create<FirewallPolicyIntrusionDetection>(FirewallPolicyIntrusionDetection.fromMap((map['intrusionDetection'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<FirewallPolicySku>(FirewallPolicySku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      snat: map['snat'] == null ? null : pulumi.Output.create<FirewallPolicySNAT>(FirewallPolicySNAT.fromMap((map['snat'] as Map).cast<String, dynamic>())),
      sql: map['sql'] == null ? null : pulumi.Output.create<FirewallPolicySQL>(FirewallPolicySQL.fromMap((map['sql'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      threatIntelMode: map['threatIntelMode'] == null ? null : pulumi.Output.create<String>(map['threatIntelMode'] as String),
      threatIntelWhitelist: map['threatIntelWhitelist'] == null ? null : pulumi.Output.create<FirewallPolicyThreatIntelWhitelist>(FirewallPolicyThreatIntelWhitelist.fromMap((map['threatIntelWhitelist'] as Map).cast<String, dynamic>())),
      transportSecurity: map['transportSecurity'] == null ? null : pulumi.Output.create<FirewallPolicyTransportSecurity>(FirewallPolicyTransportSecurity.fromMap((map['transportSecurity'] as Map).cast<String, dynamic>())),
    );
  }
}

