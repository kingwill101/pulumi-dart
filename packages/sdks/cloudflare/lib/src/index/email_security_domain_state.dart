// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_security_domain_authorization.dart';
import 'email_security_domain_emails_processed.dart';

/// Input properties used for looking up and filtering EmailSecurityDomain resources.
class EmailSecurityDomainState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<List<String>?>? allowedDeliveryModes;
  final pulumi.Input<EmailSecurityDomainAuthorization?>? authorization;
  final pulumi.Input<String?>? createdAt;
  /// Available values: "none", "good", "invalid".
  final pulumi.Input<String?>? dmarcStatus;
  final pulumi.Input<String?>? domain;
  final pulumi.Input<List<String>?>? dropDispositions;
  final pulumi.Input<EmailSecurityDomainEmailsProcessed?>? emailsProcessed;
  /// Available values: "AllItems", "Inbox".
  final pulumi.Input<String?>? folder;
  /// Available values: "Microsoft", "Google".
  final pulumi.Input<String?>? inboxProvider;
  final pulumi.Input<String?>? integrationId;
  final pulumi.Input<List<String>?>? ipRestrictions;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  final pulumi.Input<String?>? lastModified;
  final pulumi.Input<int?>? lookbackHops;
  final pulumi.Input<String?>? modifiedAt;
  final pulumi.Input<String?>? o365TenantId;
  final pulumi.Input<List<String>?>? regions;
  final pulumi.Input<bool?>? requireTlsInbound;
  final pulumi.Input<bool?>? requireTlsOutbound;
  /// Available values: "none", "good", "neutral", "open", "invalid".
  final pulumi.Input<String?>? spfStatus;
  /// Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
  final pulumi.Input<String?>? status;
  final pulumi.Input<String?>? transport;

  /// Creates a new [EmailSecurityDomainState].
  /// [accountId] Identifier.
  /// [allowedDeliveryModes] Optional.
  /// [authorization] Optional.
  /// [createdAt] Optional.
  /// [dmarcStatus] Available values: "none", "good", "invalid".
  /// [domain] Optional.
  /// [dropDispositions] Optional.
  /// [emailsProcessed] Optional.
  /// [folder] Available values: "AllItems", "Inbox".
  /// [inboxProvider] Available values: "Microsoft", "Google".
  /// [integrationId] Optional.
  /// [ipRestrictions] Optional.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [lookbackHops] Optional.
  /// [modifiedAt] Optional.
  /// [o365TenantId] Optional.
  /// [regions] Optional.
  /// [requireTlsInbound] Optional.
  /// [requireTlsOutbound] Optional.
  /// [spfStatus] Available values: "none", "good", "neutral", "open", "invalid".
  /// [status] Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
  /// [transport] Optional.
  const EmailSecurityDomainState({
    this.accountId,
    this.allowedDeliveryModes,
    this.authorization,
    this.createdAt,
    this.dmarcStatus,
    this.domain,
    this.dropDispositions,
    this.emailsProcessed,
    this.folder,
    this.inboxProvider,
    this.integrationId,
    this.ipRestrictions,
    this.lastModified,
    this.lookbackHops,
    this.modifiedAt,
    this.o365TenantId,
    this.regions,
    this.requireTlsInbound,
    this.requireTlsOutbound,
    this.spfStatus,
    this.status,
    this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowedDeliveryModes': ?allowedDeliveryModes,
      'authorization': ?pulumi.Input.mapOptionalInputValue<EmailSecurityDomainAuthorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'dmarcStatus': ?dmarcStatus,
      'domain': ?domain,
      'dropDispositions': ?dropDispositions,
      'emailsProcessed': ?pulumi.Input.mapOptionalInputValue<EmailSecurityDomainEmailsProcessed, Map<String, dynamic>>(emailsProcessed, (value) => value.toMap()),
      'folder': ?folder,
      'inboxProvider': ?inboxProvider,
      'integrationId': ?integrationId,
      'ipRestrictions': ?ipRestrictions,
      'lastModified': ?lastModified,
      'lookbackHops': ?lookbackHops,
      'modifiedAt': ?modifiedAt,
      'o365TenantId': ?o365TenantId,
      'regions': ?regions,
      'requireTlsInbound': ?requireTlsInbound,
      'requireTlsOutbound': ?requireTlsOutbound,
      'spfStatus': ?spfStatus,
      'status': ?status,
      'transport': ?transport,
    };
  }

  factory EmailSecurityDomainState.fromMap(Map<String, dynamic> map) {
    return EmailSecurityDomainState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedDeliveryModes: (() { final guardedValue = map['allowedDeliveryModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authorization: (() { final guardedValue = map['authorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EmailSecurityDomainAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dmarcStatus: (() { final guardedValue = map['dmarcStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dropDispositions: (() { final guardedValue = map['dropDispositions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      emailsProcessed: (() { final guardedValue = map['emailsProcessed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EmailSecurityDomainEmailsProcessed.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inboxProvider: (() { final guardedValue = map['inboxProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationId: (() { final guardedValue = map['integrationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRestrictions: (() { final guardedValue = map['ipRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lookbackHops: (() { final guardedValue = map['lookbackHops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      o365TenantId: (() { final guardedValue = map['o365TenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requireTlsInbound: (() { final guardedValue = map['requireTlsInbound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireTlsOutbound: (() { final guardedValue = map['requireTlsOutbound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      spfStatus: (() { final guardedValue = map['spfStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transport: (() { final guardedValue = map['transport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
