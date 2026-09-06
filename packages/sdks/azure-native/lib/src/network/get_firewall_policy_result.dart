// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_settings_response.dart';
import 'explicit_proxy_response.dart';
import 'firewall_policy_insights_response.dart';
import 'firewall_policy_intrusion_detection_response.dart';
import 'firewall_policy_sku_response.dart';
import 'firewall_policy_snatresponse.dart';
import 'firewall_policy_sqlresponse.dart';
import 'firewall_policy_threat_intel_whitelist_response.dart';
import 'firewall_policy_transport_security_response.dart';
import 'managed_service_identity_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getFirewallPolicy.
class GetFirewallPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The parent firewall policy from which rules are inherited.
  final SubResourceResponse? basePolicy;
  /// List of references to Child Firewall Policies.
  final List<SubResourceResponse>? childPolicies;
  /// DNS Proxy Settings definition.
  final DnsSettingsResponse? dnsSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Explicit Proxy Settings definition.
  final ExplicitProxyResponse? explicitProxy;
  /// List of references to Azure Firewalls that this Firewall Policy is associated with.
  final List<SubResourceResponse>? firewalls;
  /// Resource ID.
  final String? id;
  /// The identity of the firewall policy.
  final ManagedServiceIdentityResponse? identity;
  /// Insights on Firewall Policy.
  final FirewallPolicyInsightsResponse? insights;
  /// The configuration for Intrusion detection.
  final FirewallPolicyIntrusionDetectionResponse? intrusionDetection;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The provisioning state of the firewall policy resource.
  final String? provisioningState;
  /// List of references to FirewallPolicyRuleCollectionGroups.
  final List<SubResourceResponse>? ruleCollectionGroups;
  /// A read-only string that represents the size of the FirewallPolicyPropertiesFormat in MB. (ex 0.5MB)
  final String? size;
  /// The Firewall Policy SKU.
  final FirewallPolicySkuResponse? sku;
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
  /// TLS Configuration definition.
  final FirewallPolicyTransportSecurityResponse? transportSecurity;
  /// Resource type.
  final String? type;

  /// Creates a new [GetFirewallPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [basePolicy] The parent firewall policy from which rules are inherited.
  /// [childPolicies] List of references to Child Firewall Policies.
  /// [dnsSettings] DNS Proxy Settings definition.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [explicitProxy] Explicit Proxy Settings definition.
  /// [firewalls] List of references to Azure Firewalls that this Firewall Policy is associated with.
  /// [id] Resource ID.
  /// [identity] The identity of the firewall policy.
  /// [insights] Insights on Firewall Policy.
  /// [intrusionDetection] The configuration for Intrusion detection.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the firewall policy resource.
  /// [ruleCollectionGroups] List of references to FirewallPolicyRuleCollectionGroups.
  /// [size] A read-only string that represents the size of the FirewallPolicyPropertiesFormat in MB. (ex 0.5MB)
  /// [sku] The Firewall Policy SKU.
  /// [snat] The private IP addresses/IP ranges to which traffic will not be SNAT.
  /// [sql] SQL Settings definition.
  /// [tags] Resource tags.
  /// [threatIntelMode] The operation mode for Threat Intelligence.
  /// [threatIntelWhitelist] ThreatIntel Whitelist for Firewall Policy.
  /// [transportSecurity] TLS Configuration definition.
  /// [type] Resource type.
  const GetFirewallPolicyResult({
    this.azureApiVersion,
    this.basePolicy,
    this.childPolicies,
    this.dnsSettings,
    this.etag,
    this.explicitProxy,
    this.firewalls,
    this.id,
    this.identity,
    this.insights,
    this.intrusionDetection,
    this.location,
    this.name,
    this.provisioningState,
    this.ruleCollectionGroups,
    this.size,
    this.sku,
    this.snat,
    this.sql,
    this.tags,
    this.threatIntelMode,
    this.threatIntelWhitelist,
    this.transportSecurity,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'basePolicy': ?basePolicy?.toMap(),
      'childPolicies': ?(() { final guardedValue = childPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dnsSettings': ?dnsSettings?.toMap(),
      'etag': ?etag,
      'explicitProxy': ?explicitProxy?.toMap(),
      'firewalls': ?(() { final guardedValue = firewalls; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'insights': ?insights?.toMap(),
      'intrusionDetection': ?intrusionDetection?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'ruleCollectionGroups': ?(() { final guardedValue = ruleCollectionGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'size': ?size,
      'sku': ?sku?.toMap(),
      'snat': ?snat?.toMap(),
      'sql': ?sql?.toMap(),
      'tags': ?tags,
      'threatIntelMode': ?threatIntelMode,
      'threatIntelWhitelist': ?threatIntelWhitelist?.toMap(),
      'transportSecurity': ?transportSecurity?.toMap(),
      'type': ?type,
    };
  }

  factory GetFirewallPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      basePolicy: (() { final guardedValue = map['basePolicy']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      childPolicies: (() { final guardedValue = map['childPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return DnsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      explicitProxy: (() { final guardedValue = map['explicitProxy']; if (guardedValue == null) return null; return ExplicitProxyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      firewalls: (() { final guardedValue = map['firewalls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      insights: (() { final guardedValue = map['insights']; if (guardedValue == null) return null; return FirewallPolicyInsightsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      intrusionDetection: (() { final guardedValue = map['intrusionDetection']; if (guardedValue == null) return null; return FirewallPolicyIntrusionDetectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleCollectionGroups: (() { final guardedValue = map['ruleCollectionGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return FirewallPolicySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      snat: (() { final guardedValue = map['snat']; if (guardedValue == null) return null; return FirewallPolicySNATResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sql: (() { final guardedValue = map['sql']; if (guardedValue == null) return null; return FirewallPolicySQLResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      threatIntelMode: (() { final guardedValue = map['threatIntelMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      threatIntelWhitelist: (() { final guardedValue = map['threatIntelWhitelist']; if (guardedValue == null) return null; return FirewallPolicyThreatIntelWhitelistResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      transportSecurity: (() { final guardedValue = map['transportSecurity']; if (guardedValue == null) return null; return FirewallPolicyTransportSecurityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
