// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_gateway_policy_rule_settings_audit_ssh.dart';
import 'zero_trust_gateway_policy_rule_settings_biso_admin_controls.dart';
import 'zero_trust_gateway_policy_rule_settings_block_page.dart';
import 'zero_trust_gateway_policy_rule_settings_check_session.dart';
import 'zero_trust_gateway_policy_rule_settings_dns_resolvers.dart';
import 'zero_trust_gateway_policy_rule_settings_egress.dart';
import 'zero_trust_gateway_policy_rule_settings_forensic_copy.dart';
import 'zero_trust_gateway_policy_rule_settings_l4override.dart';
import 'zero_trust_gateway_policy_rule_settings_notification_settings.dart';
import 'zero_trust_gateway_policy_rule_settings_payload_log.dart';
import 'zero_trust_gateway_policy_rule_settings_quarantine.dart';
import 'zero_trust_gateway_policy_rule_settings_redirect.dart';
import 'zero_trust_gateway_policy_rule_settings_resolve_dns_internally.dart';
import 'zero_trust_gateway_policy_rule_settings_untrusted_cert.dart';

class ZeroTrustGatewayPolicyRuleSettings {
  /// Add custom headers to allowed requests as key-value pairs. Use header names as keys that map to arrays of header values. Settable only for `http` rules with the action set to `allow`.
  final pulumi.Input<Map<String, List<String>>?>? addHeaders;
  /// Set to enable MSP children to bypass this rule. Only parent MSP accounts can set this. this rule. Settable for all types of rules.
  final pulumi.Input<bool?>? allowChildBypass;
  /// Define the settings for the Audit SSH action. Settable only for `l4` rules with `auditSsh` action.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsAuditSsh?>? auditSsh;
  /// Configure browser isolation behavior. Settable only for `http` rules with the action set to `isolate`.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsBisoAdminControls?>? bisoAdminControls;
  /// Configure custom block page settings. If missing or null, use the account settings. Settable only for `http` rules with the action set to `block`.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsBlockPage?>? blockPage;
  /// Enable the custom block page. Settable only for `dns` rules with action `block`.
  final pulumi.Input<bool?>? blockPageEnabled;
  /// Explain why the rule blocks the request. The custom block page shows this text (if enabled). Settable only for `dns`, `l4`, and `http` rules when the action set to `block`.
  final pulumi.Input<String?>? blockReason;
  /// Set to enable MSP accounts to bypass their parent's rules. Only MSP child accounts can set this. Settable for all types of rules.
  final pulumi.Input<bool?>? bypassParentRule;
  /// Configure session check behavior. Settable only for `l4` and `http` rules with the action set to `allow`.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsCheckSession?>? checkSession;
  /// Remove headers from allowed requests by name. A maximum of 20 header operations (add + set + delete) is allowed per policy. Each header name may not exceed 256 bytes. Settable only for `http` rules with the action set to `allow`.
  final pulumi.Input<List<String>?>? deleteHeaders;
  /// Configure custom resolvers to route queries that match the resolver policy. Unused with 'resolve*dns*through*cloudflare' or 'resolve*dns*internally' settings. DNS queries get routed to the address closest to their origin. Only valid when a rule's action set to 'resolve'. Settable only for `dnsResolver` rules.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsDnsResolvers?>? dnsResolvers;
  /// Configure how Gateway Proxy traffic egresses. You can enable this setting for rules with Egress actions and filters, or omit it to indicate local egress via WARP IPs. Settable only for `egress` rules.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsEgress?>? egress;
  /// Configure whether a copy of the HTTP request will be sent to storage when the rule matches.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsForensicCopy?>? forensicCopy;
  /// Ignore category matches at CNAME domains in a response. When off, evaluate categories in this rule against all CNAME domain categories in the response. Settable only for `dns` and `dnsResolver` rules.
  final pulumi.Input<bool?>? ignoreCnameCategoryMatches;
  /// Specify whether to disable DNSSEC validation (for Allow actions) [INSECURE]. Settable only for `dns` rules.
  final pulumi.Input<bool?>? insecureDisableDnssecValidation;
  /// Enable IPs in DNS resolver category blocks. The system blocks only domain name categories unless you enable this setting. Settable only for `dns` and `dnsResolver` rules.
  final pulumi.Input<bool?>? ipCategories;
  /// Indicates whether to include IPs in DNS resolver indicator feed blocks. Default, indicator feeds block only domain names. Settable only for `dns` and `dnsResolver` rules.
  final pulumi.Input<bool?>? ipIndicatorFeeds;
  /// Send matching traffic to the supplied destination IP address and port. Settable only for `l4` rules with the action set to `l4Override`.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsL4override?>? l4override;
  /// Configure a notification to display on the user's device when this rule matched. Settable for all types of rules with the action set to `block`.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsNotificationSettings?>? notificationSettings;
  /// Defines a hostname for override, for the matching DNS queries. Settable only for `dns` rules with the action set to `override`.
  final pulumi.Input<String?>? overrideHost;
  /// Defines a an IP or set of IPs for overriding matched DNS queries. Settable only for `dns` rules with the action set to `override`.
  final pulumi.Input<List<String>?>? overrideIps;
  /// Configure DLP payload logging. Settable only for `http` rules.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsPayloadLog?>? payloadLog;
  /// Configure settings that apply to quarantine rules. Settable only for `http` rules.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsQuarantine?>? quarantine;
  /// Apply settings to redirect rules. Settable only for `http` rules with the action set to `redirect`.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsRedirect?>? redirect;
  /// Configure to forward the query to the internal DNS service, passing the specified 'view*id' as input. Not used when 'dns*resolvers' is specified or 'resolve*dns*through*cloudflare' is set. Only valid when a rule's action set to 'resolve'. Settable only for `dnsResolver` rules.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally?>? resolveDnsInternally;
  /// Enable to send queries that match the policy to Cloudflare's default 1.1.1.1 DNS resolver. Cannot set when 'dns*resolvers' specified or 'resolve*dns_internally' is set. Only valid when a rule's action set to 'resolve'. Settable only for `dnsResolver` rules.
  final pulumi.Input<bool?>? resolveDnsThroughCloudflare;
  /// Replace existing headers on allowed requests with the specified key-value pairs. If a header does not exist, it is added. Header values may contain `@{selector.name}` variable references that are interpolated at the edge. Use `@@{` to escape a literal `@{`. A maximum of 20 header operations (add + set + delete) is allowed per policy. Each header name may not exceed 256 bytes and each header value may not exceed 4 KB. Settable only for `http` rules with the action set to `allow`.
  final pulumi.Input<Map<String, List<String>>?>? setHeaders;
  /// Configure behavior when an upstream certificate is invalid or an SSL error occurs. Settable only for `http` rules with the action set to `allow`.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettingsUntrustedCert?>? untrustedCert;

  /// Creates a new [ZeroTrustGatewayPolicyRuleSettings].
  /// [addHeaders] Add custom headers to allowed requests as key-value pairs. Use header names as keys that map to arrays of header values. Settable only for `http` rules with the action set to `allow`.
  /// [allowChildBypass] Set to enable MSP children to bypass this rule. Only parent MSP accounts can set this. this rule. Settable for all types of rules.
  /// [auditSsh] Define the settings for the Audit SSH action. Settable only for `l4` rules with `auditSsh` action.
  /// [bisoAdminControls] Configure browser isolation behavior. Settable only for `http` rules with the action set to `isolate`.
  /// [blockPage] Configure custom block page settings. If missing or null, use the account settings. Settable only for `http` rules with the action set to `block`.
  /// [blockPageEnabled] Enable the custom block page. Settable only for `dns` rules with action `block`.
  /// [blockReason] Explain why the rule blocks the request. The custom block page shows this text (if enabled). Settable only for `dns`, `l4`, and `http` rules when the action set to `block`.
  /// [bypassParentRule] Set to enable MSP accounts to bypass their parent's rules. Only MSP child accounts can set this. Settable for all types of rules.
  /// [checkSession] Configure session check behavior. Settable only for `l4` and `http` rules with the action set to `allow`.
  /// [deleteHeaders] Remove headers from allowed requests by name. A maximum of 20 header operations (add + set + delete) is allowed per policy. Each header name may not exceed 256 bytes. Settable only for `http` rules with the action set to `allow`.
  /// [dnsResolvers] Configure custom resolvers to route queries that match the resolver policy. Unused with 'resolve*dns*through*cloudflare' or 'resolve*dns*internally' settings. DNS queries get routed to the address closest to their origin. Only valid when a rule's action set to 'resolve'. Settable only for `dnsResolver` rules.
  /// [egress] Configure how Gateway Proxy traffic egresses. You can enable this setting for rules with Egress actions and filters, or omit it to indicate local egress via WARP IPs. Settable only for `egress` rules.
  /// [forensicCopy] Configure whether a copy of the HTTP request will be sent to storage when the rule matches.
  /// [ignoreCnameCategoryMatches] Ignore category matches at CNAME domains in a response. When off, evaluate categories in this rule against all CNAME domain categories in the response. Settable only for `dns` and `dnsResolver` rules.
  /// [insecureDisableDnssecValidation] Specify whether to disable DNSSEC validation (for Allow actions) [INSECURE]. Settable only for `dns` rules.
  /// [ipCategories] Enable IPs in DNS resolver category blocks. The system blocks only domain name categories unless you enable this setting. Settable only for `dns` and `dnsResolver` rules.
  /// [ipIndicatorFeeds] Indicates whether to include IPs in DNS resolver indicator feed blocks. Default, indicator feeds block only domain names. Settable only for `dns` and `dnsResolver` rules.
  /// [l4override] Send matching traffic to the supplied destination IP address and port. Settable only for `l4` rules with the action set to `l4Override`.
  /// [notificationSettings] Configure a notification to display on the user's device when this rule matched. Settable for all types of rules with the action set to `block`.
  /// [overrideHost] Defines a hostname for override, for the matching DNS queries. Settable only for `dns` rules with the action set to `override`.
  /// [overrideIps] Defines a an IP or set of IPs for overriding matched DNS queries. Settable only for `dns` rules with the action set to `override`.
  /// [payloadLog] Configure DLP payload logging. Settable only for `http` rules.
  /// [quarantine] Configure settings that apply to quarantine rules. Settable only for `http` rules.
  /// [redirect] Apply settings to redirect rules. Settable only for `http` rules with the action set to `redirect`.
  /// [resolveDnsInternally] Configure to forward the query to the internal DNS service, passing the specified 'view*id' as input. Not used when 'dns*resolvers' is specified or 'resolve*dns*through*cloudflare' is set. Only valid when a rule's action set to 'resolve'. Settable only for `dnsResolver` rules.
  /// [resolveDnsThroughCloudflare] Enable to send queries that match the policy to Cloudflare's default 1.1.1.1 DNS resolver. Cannot set when 'dns*resolvers' specified or 'resolve*dns_internally' is set. Only valid when a rule's action set to 'resolve'. Settable only for `dnsResolver` rules.
  /// [setHeaders] Replace existing headers on allowed requests with the specified key-value pairs. If a header does not exist, it is added. Header values may contain `@{selector.name}` variable references that are interpolated at the edge. Use `@@{` to escape a literal `@{`. A maximum of 20 header operations (add + set + delete) is allowed per policy. Each header name may not exceed 256 bytes and each header value may not exceed 4 KB. Settable only for `http` rules with the action set to `allow`.
  /// [untrustedCert] Configure behavior when an upstream certificate is invalid or an SSL error occurs. Settable only for `http` rules with the action set to `allow`.
  const ZeroTrustGatewayPolicyRuleSettings({
    this.addHeaders,
    this.allowChildBypass,
    this.auditSsh,
    this.bisoAdminControls,
    this.blockPage,
    this.blockPageEnabled,
    this.blockReason,
    this.bypassParentRule,
    this.checkSession,
    this.deleteHeaders,
    this.dnsResolvers,
    this.egress,
    this.forensicCopy,
    this.ignoreCnameCategoryMatches,
    this.insecureDisableDnssecValidation,
    this.ipCategories,
    this.ipIndicatorFeeds,
    this.l4override,
    this.notificationSettings,
    this.overrideHost,
    this.overrideIps,
    this.payloadLog,
    this.quarantine,
    this.redirect,
    this.resolveDnsInternally,
    this.resolveDnsThroughCloudflare,
    this.setHeaders,
    this.untrustedCert,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addHeaders': ?addHeaders,
      'allowChildBypass': ?allowChildBypass,
      'auditSsh': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsAuditSsh, Map<String, dynamic>>(auditSsh, (value) => value.toMap()),
      'bisoAdminControls': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsBisoAdminControls, Map<String, dynamic>>(bisoAdminControls, (value) => value.toMap()),
      'blockPage': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsBlockPage, Map<String, dynamic>>(blockPage, (value) => value.toMap()),
      'blockPageEnabled': ?blockPageEnabled,
      'blockReason': ?blockReason,
      'bypassParentRule': ?bypassParentRule,
      'checkSession': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsCheckSession, Map<String, dynamic>>(checkSession, (value) => value.toMap()),
      'deleteHeaders': ?deleteHeaders,
      'dnsResolvers': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsDnsResolvers, Map<String, dynamic>>(dnsResolvers, (value) => value.toMap()),
      'egress': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsEgress, Map<String, dynamic>>(egress, (value) => value.toMap()),
      'forensicCopy': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsForensicCopy, Map<String, dynamic>>(forensicCopy, (value) => value.toMap()),
      'ignoreCnameCategoryMatches': ?ignoreCnameCategoryMatches,
      'insecureDisableDnssecValidation': ?insecureDisableDnssecValidation,
      'ipCategories': ?ipCategories,
      'ipIndicatorFeeds': ?ipIndicatorFeeds,
      'l4override': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsL4override, Map<String, dynamic>>(l4override, (value) => value.toMap()),
      'notificationSettings': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsNotificationSettings, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'overrideHost': ?overrideHost,
      'overrideIps': ?overrideIps,
      'payloadLog': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsPayloadLog, Map<String, dynamic>>(payloadLog, (value) => value.toMap()),
      'quarantine': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsQuarantine, Map<String, dynamic>>(quarantine, (value) => value.toMap()),
      'redirect': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
      'resolveDnsInternally': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally, Map<String, dynamic>>(resolveDnsInternally, (value) => value.toMap()),
      'resolveDnsThroughCloudflare': ?resolveDnsThroughCloudflare,
      'setHeaders': ?setHeaders,
      'untrustedCert': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettingsUntrustedCert, Map<String, dynamic>>(untrustedCert, (value) => value.toMap()),
    };
  }

  factory ZeroTrustGatewayPolicyRuleSettings.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPolicyRuleSettings(
      addHeaders: (() { final guardedValue = map['addHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      allowChildBypass: (() { final guardedValue = map['allowChildBypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      auditSsh: (() { final guardedValue = map['auditSsh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsAuditSsh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bisoAdminControls: (() { final guardedValue = map['bisoAdminControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsBisoAdminControls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blockPage: (() { final guardedValue = map['blockPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsBlockPage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blockPageEnabled: (() { final guardedValue = map['blockPageEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      blockReason: (() { final guardedValue = map['blockReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bypassParentRule: (() { final guardedValue = map['bypassParentRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      checkSession: (() { final guardedValue = map['checkSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsCheckSession.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deleteHeaders: (() { final guardedValue = map['deleteHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dnsResolvers: (() { final guardedValue = map['dnsResolvers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsDnsResolvers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      egress: (() { final guardedValue = map['egress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsEgress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forensicCopy: (() { final guardedValue = map['forensicCopy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsForensicCopy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ignoreCnameCategoryMatches: (() { final guardedValue = map['ignoreCnameCategoryMatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      insecureDisableDnssecValidation: (() { final guardedValue = map['insecureDisableDnssecValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipCategories: (() { final guardedValue = map['ipCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipIndicatorFeeds: (() { final guardedValue = map['ipIndicatorFeeds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      l4override: (() { final guardedValue = map['l4override']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsL4override.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notificationSettings: (() { final guardedValue = map['notificationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsNotificationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overrideHost: (() { final guardedValue = map['overrideHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overrideIps: (() { final guardedValue = map['overrideIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      payloadLog: (() { final guardedValue = map['payloadLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsPayloadLog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      quarantine: (() { final guardedValue = map['quarantine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsQuarantine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redirect: (() { final guardedValue = map['redirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsRedirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resolveDnsInternally: (() { final guardedValue = map['resolveDnsInternally']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resolveDnsThroughCloudflare: (() { final guardedValue = map['resolveDnsThroughCloudflare']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      setHeaders: (() { final guardedValue = map['setHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      untrustedCert: (() { final guardedValue = map['untrustedCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettingsUntrustedCert.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
