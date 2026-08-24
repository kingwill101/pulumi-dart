// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_gateway_policy_rule_settings_audit_ssh.dart';
import 'get_zero_trust_gateway_policy_rule_settings_biso_admin_controls.dart';
import 'get_zero_trust_gateway_policy_rule_settings_block_page.dart';
import 'get_zero_trust_gateway_policy_rule_settings_check_session.dart';
import 'get_zero_trust_gateway_policy_rule_settings_dns_resolvers.dart';
import 'get_zero_trust_gateway_policy_rule_settings_egress.dart';
import 'get_zero_trust_gateway_policy_rule_settings_forensic_copy.dart';
import 'get_zero_trust_gateway_policy_rule_settings_l4override.dart';
import 'get_zero_trust_gateway_policy_rule_settings_notification_settings.dart';
import 'get_zero_trust_gateway_policy_rule_settings_payload_log.dart';
import 'get_zero_trust_gateway_policy_rule_settings_quarantine.dart';
import 'get_zero_trust_gateway_policy_rule_settings_redirect.dart';
import 'get_zero_trust_gateway_policy_rule_settings_resolve_dns_internally.dart';
import 'get_zero_trust_gateway_policy_rule_settings_untrusted_cert.dart';

class GetZeroTrustGatewayPolicyRuleSettings {
  /// Add custom headers to allowed requests as key-value pairs. Use header names as keys that map to arrays of header values. Header values may contain `@{selector.name}` variable references that are interpolated at the edge. Use `@@{` to escape a literal `@{`. A maximum of 20 header operations (add + set + delete) is allowed per policy. Each header name may not exceed 256 bytes and each header value may not exceed 4 KB. Settable only for `http` rules with the action set to `allow`.
  final pulumi.Input<Map<String, List<String>>> addHeaders;
  /// Set to enable MSP children to bypass this rule. Only parent MSP accounts can set this. this rule. Settable for all types of rules.
  final pulumi.Input<bool> allowChildBypass;
  /// Define the settings for the Audit SSH action. Settable only for `l4` rules with `auditSsh` action.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsAuditSsh> auditSsh;
  /// Configure browser isolation behavior. Settable only for `http` rules with the action set to `isolate`.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsBisoAdminControls> bisoAdminControls;
  /// Configure custom block page settings. If missing or null, use the account settings. Settable only for `http` rules with the action set to `block`.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsBlockPage> blockPage;
  /// Enable the custom block page. Settable only for `dns` rules with action `block`.
  final pulumi.Input<bool> blockPageEnabled;
  /// Explain why the rule blocks the request. The custom block page shows this text (if enabled). Settable only for `dns`, `l4`, and `http` rules when the action set to `block`.
  final pulumi.Input<String> blockReason;
  /// Set to enable MSP accounts to bypass their parent's rules. Only MSP child accounts can set this. Settable for all types of rules.
  final pulumi.Input<bool> bypassParentRule;
  /// Configure session check behavior. Settable only for `l4` and `http` rules with the action set to `allow`.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsCheckSession> checkSession;
  /// Remove headers from allowed requests by name. A maximum of 20 header operations (add + set + delete) is allowed per policy. Each header name may not exceed 256 bytes. Settable only for `http` rules with the action set to `allow`.
  final pulumi.Input<List<String>> deleteHeaders;
  /// Configure custom resolvers to route queries that match the resolver policy. Unused with 'resolve*dns*through*cloudflare' or 'resolve*dns*internally' settings. DNS queries get routed to the address closest to their origin. Only valid when a rule's action set to 'resolve'. Settable only for `dnsResolver` rules.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsDnsResolvers> dnsResolvers;
  /// Configure how Gateway Proxy traffic egresses. You can enable this setting for rules with Egress actions and filters, or omit it to indicate local egress via WARP IPs. Settable only for `egress` rules.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsEgress> egress;
  /// Configure whether a copy of the HTTP request will be sent to storage when the rule matches.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsForensicCopy> forensicCopy;
  /// Ignore category matches at CNAME domains in a response. When off, evaluate categories in this rule against all CNAME domain categories in the response. Settable only for `dns` and `dnsResolver` rules.
  final pulumi.Input<bool> ignoreCnameCategoryMatches;
  /// Specify whether to disable DNSSEC validation (for Allow actions) [INSECURE]. Settable only for `dns` rules.
  final pulumi.Input<bool> insecureDisableDnssecValidation;
  /// Enable IPs in DNS resolver category blocks. The system blocks only domain name categories unless you enable this setting. Settable only for `dns` and `dnsResolver` rules.
  final pulumi.Input<bool> ipCategories;
  /// Indicates whether to include IPs in DNS resolver indicator feed blocks. Default, indicator feeds block only domain names. Settable only for `dns` and `dnsResolver` rules.
  final pulumi.Input<bool> ipIndicatorFeeds;
  /// Send matching traffic to the supplied destination IP address and port. Settable only for `l4` rules with the action set to `l4Override`.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsL4override> l4override;
  /// Configure a notification to display on the user's device when this rule matched. Settable for all types of rules with the action set to `block`.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsNotificationSettings> notificationSettings;
  /// Defines a hostname for override, for the matching DNS queries. Settable only for `dns` rules with the action set to `override`.
  final pulumi.Input<String> overrideHost;
  /// Defines a an IP or set of IPs for overriding matched DNS queries. Settable only for `dns` rules with the action set to `override`.
  final pulumi.Input<List<String>> overrideIps;
  /// Configure DLP payload logging. Settable only for `http` rules.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsPayloadLog> payloadLog;
  /// Configure settings that apply to quarantine rules. Settable only for `http` rules.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsQuarantine> quarantine;
  /// Apply settings to redirect rules. Settable only for `http` rules with the action set to `redirect`.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsRedirect> redirect;
  /// Configure to forward the query to the internal DNS service, passing the specified 'view*id' as input. Not used when 'dns*resolvers' is specified or 'resolve*dns*through*cloudflare' is set. Only valid when a rule's action set to 'resolve'. Settable only for `dnsResolver` rules.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally> resolveDnsInternally;
  /// Enable to send queries that match the policy to Cloudflare's default 1.1.1.1 DNS resolver. Cannot set when 'dns*resolvers' specified or 'resolve*dns_internally' is set. Only valid when a rule's action set to 'resolve'. Settable only for `dnsResolver` rules.
  final pulumi.Input<bool> resolveDnsThroughCloudflare;
  /// Replace existing headers on allowed requests with the specified key-value pairs. If a header does not exist, it is added. Header values may contain `@{selector.name}` variable references that are interpolated at the edge. Use `@@{` to escape a literal `@{`. A maximum of 20 header operations (add + set + delete) is allowed per policy. Each header name may not exceed 256 bytes and each header value may not exceed 4 KB. Settable only for `http` rules with the action set to `allow`.
  final pulumi.Input<Map<String, List<String>>> setHeaders;
  /// Configure behavior when an upstream certificate is invalid or an SSL error occurs. Settable only for `http` rules with the action set to `allow`.
  final pulumi.Input<GetZeroTrustGatewayPolicyRuleSettingsUntrustedCert> untrustedCert;

  /// Creates a new [GetZeroTrustGatewayPolicyRuleSettings].
  /// [addHeaders] Add custom headers to allowed requests as key-value pairs. Use header names as keys that map to arrays of header values. Header values may contain `@{selector.name}` variable references that are interpolated at the edge. Use `@@{` to escape a literal `@{`. A maximum of 20 header operations (add + set + delete) is allowed per policy. Each header name may not exceed 256 bytes and each header value may not exceed 4 KB. Settable only for `http` rules with the action set to `allow`.
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
  const GetZeroTrustGatewayPolicyRuleSettings({
    required this.addHeaders,
    required this.allowChildBypass,
    required this.auditSsh,
    required this.bisoAdminControls,
    required this.blockPage,
    required this.blockPageEnabled,
    required this.blockReason,
    required this.bypassParentRule,
    required this.checkSession,
    required this.deleteHeaders,
    required this.dnsResolvers,
    required this.egress,
    required this.forensicCopy,
    required this.ignoreCnameCategoryMatches,
    required this.insecureDisableDnssecValidation,
    required this.ipCategories,
    required this.ipIndicatorFeeds,
    required this.l4override,
    required this.notificationSettings,
    required this.overrideHost,
    required this.overrideIps,
    required this.payloadLog,
    required this.quarantine,
    required this.redirect,
    required this.resolveDnsInternally,
    required this.resolveDnsThroughCloudflare,
    required this.setHeaders,
    required this.untrustedCert,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addHeaders': addHeaders,
      'allowChildBypass': allowChildBypass,
      'auditSsh': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsAuditSsh, Map<String, dynamic>>(auditSsh, (value) => value.toMap()),
      'bisoAdminControls': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsBisoAdminControls, Map<String, dynamic>>(bisoAdminControls, (value) => value.toMap()),
      'blockPage': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsBlockPage, Map<String, dynamic>>(blockPage, (value) => value.toMap()),
      'blockPageEnabled': blockPageEnabled,
      'blockReason': blockReason,
      'bypassParentRule': bypassParentRule,
      'checkSession': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsCheckSession, Map<String, dynamic>>(checkSession, (value) => value.toMap()),
      'deleteHeaders': deleteHeaders,
      'dnsResolvers': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsDnsResolvers, Map<String, dynamic>>(dnsResolvers, (value) => value.toMap()),
      'egress': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsEgress, Map<String, dynamic>>(egress, (value) => value.toMap()),
      'forensicCopy': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsForensicCopy, Map<String, dynamic>>(forensicCopy, (value) => value.toMap()),
      'ignoreCnameCategoryMatches': ignoreCnameCategoryMatches,
      'insecureDisableDnssecValidation': insecureDisableDnssecValidation,
      'ipCategories': ipCategories,
      'ipIndicatorFeeds': ipIndicatorFeeds,
      'l4override': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsL4override, Map<String, dynamic>>(l4override, (value) => value.toMap()),
      'notificationSettings': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsNotificationSettings, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'overrideHost': overrideHost,
      'overrideIps': overrideIps,
      'payloadLog': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsPayloadLog, Map<String, dynamic>>(payloadLog, (value) => value.toMap()),
      'quarantine': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsQuarantine, Map<String, dynamic>>(quarantine, (value) => value.toMap()),
      'redirect': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
      'resolveDnsInternally': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally, Map<String, dynamic>>(resolveDnsInternally, (value) => value.toMap()),
      'resolveDnsThroughCloudflare': resolveDnsThroughCloudflare,
      'setHeaders': setHeaders,
      'untrustedCert': pulumi.Input.mapInputValue<GetZeroTrustGatewayPolicyRuleSettingsUntrustedCert, Map<String, dynamic>>(untrustedCert, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustGatewayPolicyRuleSettings.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyRuleSettings(
      addHeaders: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(map['addHeaders']!, (value) => (value as List).cast<String>())),
      allowChildBypass: pulumi.Input.fromValue(map['allowChildBypass'] as bool),
      auditSsh: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsAuditSsh.fromMap((map['auditSsh']! as Map).cast<String, dynamic>())),
      bisoAdminControls: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsBisoAdminControls.fromMap((map['bisoAdminControls']! as Map).cast<String, dynamic>())),
      blockPage: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsBlockPage.fromMap((map['blockPage']! as Map).cast<String, dynamic>())),
      blockPageEnabled: pulumi.Input.fromValue(map['blockPageEnabled'] as bool),
      blockReason: pulumi.Input.fromValue(map['blockReason'] as String),
      bypassParentRule: pulumi.Input.fromValue(map['bypassParentRule'] as bool),
      checkSession: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsCheckSession.fromMap((map['checkSession']! as Map).cast<String, dynamic>())),
      deleteHeaders: pulumi.Input.fromValue((map['deleteHeaders'] as List).cast<String>()),
      dnsResolvers: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsDnsResolvers.fromMap((map['dnsResolvers']! as Map).cast<String, dynamic>())),
      egress: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsEgress.fromMap((map['egress']! as Map).cast<String, dynamic>())),
      forensicCopy: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsForensicCopy.fromMap((map['forensicCopy']! as Map).cast<String, dynamic>())),
      ignoreCnameCategoryMatches: pulumi.Input.fromValue(map['ignoreCnameCategoryMatches'] as bool),
      insecureDisableDnssecValidation: pulumi.Input.fromValue(map['insecureDisableDnssecValidation'] as bool),
      ipCategories: pulumi.Input.fromValue(map['ipCategories'] as bool),
      ipIndicatorFeeds: pulumi.Input.fromValue(map['ipIndicatorFeeds'] as bool),
      l4override: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsL4override.fromMap((map['l4override']! as Map).cast<String, dynamic>())),
      notificationSettings: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsNotificationSettings.fromMap((map['notificationSettings']! as Map).cast<String, dynamic>())),
      overrideHost: pulumi.Input.fromValue(map['overrideHost'] as String),
      overrideIps: pulumi.Input.fromValue((map['overrideIps'] as List).cast<String>()),
      payloadLog: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsPayloadLog.fromMap((map['payloadLog']! as Map).cast<String, dynamic>())),
      quarantine: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsQuarantine.fromMap((map['quarantine']! as Map).cast<String, dynamic>())),
      redirect: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsRedirect.fromMap((map['redirect']! as Map).cast<String, dynamic>())),
      resolveDnsInternally: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally.fromMap((map['resolveDnsInternally']! as Map).cast<String, dynamic>())),
      resolveDnsThroughCloudflare: pulumi.Input.fromValue(map['resolveDnsThroughCloudflare'] as bool),
      setHeaders: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(map['setHeaders']!, (value) => (value as List).cast<String>())),
      untrustedCert: pulumi.Input.fromValue(GetZeroTrustGatewayPolicyRuleSettingsUntrustedCert.fromMap((map['untrustedCert']! as Map).cast<String, dynamic>())),
    );
  }
}
