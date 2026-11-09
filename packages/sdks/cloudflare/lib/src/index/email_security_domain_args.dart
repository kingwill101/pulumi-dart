// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_email_security_domain_email_security_domain_args_doc}
/// The set of arguments for EmailSecurityDomain.
/// {@endtemplate}
/// {@macro pulumi_index_email_security_domain_email_security_domain_args_doc}
class EmailSecurityDomainArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Delivery modes to onboard the domain through.
  final pulumi.Input<List<String>> allowedDeliveryModes;
  /// The email domain to protect.
  final pulumi.Input<String> domain;
  /// Dispositions to drop instead of delivering, e.g. `["MALICIOUS", "SPAM"]`.
  final pulumi.Input<List<String>> dropDispositions;
  /// The mailbox folder to scan, for API-scanning domains.
  /// Available values: "AllItems", "Inbox".
  final pulumi.Input<String?>? folder;
  /// Identifier of the CASB integration that authorizes this domain. The integration also enables API scanning, post-delivery actions, and directory sync.
  final pulumi.Input<String?>? integrationId;
  /// Source IP ranges mail is accepted from. Any other source is rejected.
  final pulumi.Input<List<String>> ipRestrictions;
  /// Number of hops to trace back through received headers when reconstructing the original message (1-20).
  final pulumi.Input<int?>? lookbackHops;
  /// Regions that process messages for this domain, e.g. `["GLOBAL"]` or `["US"]`.
  final pulumi.Input<List<String>> regions;
  /// Require TLS on inbound connections.
  final pulumi.Input<bool?>? requireTlsInbound;
  /// Require TLS on outbound connections.
  final pulumi.Input<bool?>? requireTlsOutbound;
  /// The mail transport hostname for MX/Inline delivery — the MX record Cloudflare delivers email to (e.g. `mx.example.com`).
  final pulumi.Input<String?>? transport;

  /// Creates a new [EmailSecurityDomainArgs].
  /// [accountId] Identifier.
  /// [allowedDeliveryModes] Delivery modes to onboard the domain through.
  /// [domain] The email domain to protect.
  /// [dropDispositions] Dispositions to drop instead of delivering, e.g. `["MALICIOUS", "SPAM"]`.
  /// [folder] The mailbox folder to scan, for API-scanning domains.
  /// [integrationId] Identifier of the CASB integration that authorizes this domain. The integration also enables API scanning, post-delivery actions, and directory sync.
  /// [ipRestrictions] Source IP ranges mail is accepted from. Any other source is rejected.
  /// [lookbackHops] Number of hops to trace back through received headers when reconstructing the original message (1-20).
  /// [regions] Regions that process messages for this domain, e.g. `["GLOBAL"]` or `["US"]`.
  /// [requireTlsInbound] Require TLS on inbound connections.
  /// [requireTlsOutbound] Require TLS on outbound connections.
  /// [transport] The mail transport hostname for MX/Inline delivery — the MX record Cloudflare delivers email to (e.g. `mx.example.com`).
  const EmailSecurityDomainArgs({
    required this.accountId,
    required this.allowedDeliveryModes,
    required this.domain,
    required this.dropDispositions,
    this.folder,
    this.integrationId,
    required this.ipRestrictions,
    this.lookbackHops,
    required this.regions,
    this.requireTlsInbound,
    this.requireTlsOutbound,
    this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'allowedDeliveryModes': allowedDeliveryModes,
      'domain': domain,
      'dropDispositions': dropDispositions,
      'folder': ?folder,
      'integrationId': ?integrationId,
      'ipRestrictions': ipRestrictions,
      'lookbackHops': ?lookbackHops,
      'regions': regions,
      'requireTlsInbound': ?requireTlsInbound,
      'requireTlsOutbound': ?requireTlsOutbound,
      'transport': ?transport,
    };
  }

  factory EmailSecurityDomainArgs.fromMap(Map<String, dynamic> map) {
    return EmailSecurityDomainArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      allowedDeliveryModes: pulumi.Input.fromValue((map['allowedDeliveryModes'] as List).cast<String>()),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      dropDispositions: pulumi.Input.fromValue((map['dropDispositions'] as List).cast<String>()),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationId: (() { final guardedValue = map['integrationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRestrictions: pulumi.Input.fromValue((map['ipRestrictions'] as List).cast<String>()),
      lookbackHops: (() { final guardedValue = map['lookbackHops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      regions: pulumi.Input.fromValue((map['regions'] as List).cast<String>()),
      requireTlsInbound: (() { final guardedValue = map['requireTlsInbound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireTlsOutbound: (() { final guardedValue = map['requireTlsOutbound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transport: (() { final guardedValue = map['transport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
