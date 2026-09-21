// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_email_security_domain_email_security_domain_args_doc}
/// The set of arguments for EmailSecurityDomain.
/// {@endtemplate}
/// {@macro pulumi_index_email_security_domain_email_security_domain_args_doc}
class EmailSecurityDomainArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<List<String>> allowedDeliveryModes;
  final pulumi.Input<String> domain;
  final pulumi.Input<List<String>> dropDispositions;
  /// Available values: "AllItems", "Inbox".
  final pulumi.Input<String?>? folder;
  final pulumi.Input<String?>? integrationId;
  final pulumi.Input<List<String>> ipRestrictions;
  final pulumi.Input<int?>? lookbackHops;
  final pulumi.Input<List<String>> regions;
  final pulumi.Input<bool?>? requireTlsInbound;
  final pulumi.Input<bool?>? requireTlsOutbound;
  final pulumi.Input<String?>? transport;

  /// Creates a new [EmailSecurityDomainArgs].
  /// [accountId] Identifier.
  /// [allowedDeliveryModes] Required.
  /// [domain] Required.
  /// [dropDispositions] Required.
  /// [folder] Available values: "AllItems", "Inbox".
  /// [integrationId] Optional.
  /// [ipRestrictions] Required.
  /// [lookbackHops] Optional.
  /// [regions] Required.
  /// [requireTlsInbound] Optional.
  /// [requireTlsOutbound] Optional.
  /// [transport] Optional.
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
