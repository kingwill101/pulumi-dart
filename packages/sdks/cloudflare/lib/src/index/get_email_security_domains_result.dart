// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_security_domains_result_authorization.dart';
import 'get_email_security_domains_result_emails_processed.dart';

class GetEmailSecurityDomainsResult {
  final pulumi.Input<List<String>> allowedDeliveryModes;
  final pulumi.Input<GetEmailSecurityDomainsResultAuthorization> authorization;
  final pulumi.Input<String> createdAt;
  /// Available values: "none", "good", "invalid".
  final pulumi.Input<String> dmarcStatus;
  final pulumi.Input<String> domain;
  final pulumi.Input<List<String>> dropDispositions;
  final pulumi.Input<GetEmailSecurityDomainsResultEmailsProcessed> emailsProcessed;
  /// Available values: "AllItems", "Inbox".
  final pulumi.Input<String> folder;
  /// Domain identifier.
  final pulumi.Input<String> id;
  /// Available values: "Microsoft", "Google".
  final pulumi.Input<String> inboxProvider;
  final pulumi.Input<String> integrationId;
  final pulumi.Input<List<String>> ipRestrictions;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  final pulumi.Input<String> lastModified;
  final pulumi.Input<int> lookbackHops;
  final pulumi.Input<String> modifiedAt;
  final pulumi.Input<String> o365TenantId;
  final pulumi.Input<List<String>> regions;
  final pulumi.Input<bool> requireTlsInbound;
  final pulumi.Input<bool> requireTlsOutbound;
  /// Available values: "none", "good", "neutral", "open", "invalid".
  final pulumi.Input<String> spfStatus;
  /// Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
  final pulumi.Input<String> status;
  final pulumi.Input<String> transport;

  /// Creates a new [GetEmailSecurityDomainsResult].
  /// [allowedDeliveryModes] Required.
  /// [authorization] Required.
  /// [createdAt] Required.
  /// [dmarcStatus] Available values: "none", "good", "invalid".
  /// [domain] Required.
  /// [dropDispositions] Required.
  /// [emailsProcessed] Required.
  /// [folder] Available values: "AllItems", "Inbox".
  /// [id] Domain identifier.
  /// [inboxProvider] Available values: "Microsoft", "Google".
  /// [integrationId] Required.
  /// [ipRestrictions] Required.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [lookbackHops] Required.
  /// [modifiedAt] Required.
  /// [o365TenantId] Required.
  /// [regions] Required.
  /// [requireTlsInbound] Required.
  /// [requireTlsOutbound] Required.
  /// [spfStatus] Available values: "none", "good", "neutral", "open", "invalid".
  /// [status] Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
  /// [transport] Required.
  const GetEmailSecurityDomainsResult({
    required this.allowedDeliveryModes,
    required this.authorization,
    required this.createdAt,
    required this.dmarcStatus,
    required this.domain,
    required this.dropDispositions,
    required this.emailsProcessed,
    required this.folder,
    required this.id,
    required this.inboxProvider,
    required this.integrationId,
    required this.ipRestrictions,
    required this.lastModified,
    required this.lookbackHops,
    required this.modifiedAt,
    required this.o365TenantId,
    required this.regions,
    required this.requireTlsInbound,
    required this.requireTlsOutbound,
    required this.spfStatus,
    required this.status,
    required this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedDeliveryModes': allowedDeliveryModes,
      'authorization': pulumi.Input.mapInputValue<GetEmailSecurityDomainsResultAuthorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'createdAt': createdAt,
      'dmarcStatus': dmarcStatus,
      'domain': domain,
      'dropDispositions': dropDispositions,
      'emailsProcessed': pulumi.Input.mapInputValue<GetEmailSecurityDomainsResultEmailsProcessed, Map<String, dynamic>>(emailsProcessed, (value) => value.toMap()),
      'folder': folder,
      'id': id,
      'inboxProvider': inboxProvider,
      'integrationId': integrationId,
      'ipRestrictions': ipRestrictions,
      'lastModified': lastModified,
      'lookbackHops': lookbackHops,
      'modifiedAt': modifiedAt,
      'o365TenantId': o365TenantId,
      'regions': regions,
      'requireTlsInbound': requireTlsInbound,
      'requireTlsOutbound': requireTlsOutbound,
      'spfStatus': spfStatus,
      'status': status,
      'transport': transport,
    };
  }

  factory GetEmailSecurityDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityDomainsResult(
      allowedDeliveryModes: pulumi.Input.fromValue((map['allowedDeliveryModes'] as List).cast<String>()),
      authorization: pulumi.Input.fromValue(GetEmailSecurityDomainsResultAuthorization.fromMap((map['authorization']! as Map).cast<String, dynamic>())),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      dmarcStatus: pulumi.Input.fromValue(map['dmarcStatus'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      dropDispositions: pulumi.Input.fromValue((map['dropDispositions'] as List).cast<String>()),
      emailsProcessed: pulumi.Input.fromValue(GetEmailSecurityDomainsResultEmailsProcessed.fromMap((map['emailsProcessed']! as Map).cast<String, dynamic>())),
      folder: pulumi.Input.fromValue(map['folder'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      inboxProvider: pulumi.Input.fromValue(map['inboxProvider'] as String),
      integrationId: pulumi.Input.fromValue(map['integrationId'] as String),
      ipRestrictions: pulumi.Input.fromValue((map['ipRestrictions'] as List).cast<String>()),
      lastModified: pulumi.Input.fromValue(map['lastModified'] as String),
      lookbackHops: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['lookbackHops'])),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      o365TenantId: pulumi.Input.fromValue(map['o365TenantId'] as String),
      regions: pulumi.Input.fromValue((map['regions'] as List).cast<String>()),
      requireTlsInbound: pulumi.Input.fromValue(map['requireTlsInbound'] as bool),
      requireTlsOutbound: pulumi.Input.fromValue(map['requireTlsOutbound'] as bool),
      spfStatus: pulumi.Input.fromValue(map['spfStatus'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      transport: pulumi.Input.fromValue(map['transport'] as String),
    );
  }
}
