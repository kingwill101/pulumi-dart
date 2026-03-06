// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_service_domain_verification_record.dart';

/// Input properties used for looking up and filtering EmailServiceDomain resources.
class EmailServiceDomainState {
  /// Describes how a Domains resource is being managed. Possible values are `AzureManaged`, `CustomerManaged`, `CustomerManagedInExchangeOnline`. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String>? domainManagement;
  /// The resource ID of the Email Communication Service where the Domain belongs to. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String>? emailServiceId;
  /// P2 sender domain that is displayed to the email recipients [RFC 5322].
  final pulumi.Input<String>? fromSenderDomain;
  /// P1 sender domain that is present on the email envelope [RFC 5321].
  final pulumi.Input<String>? mailFromSenderDomain;
  /// The name of the Email Communication Service resource. If `domain_management` is `AzureManaged`, the name must be `AzureManagedDomain`. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the Email Communication Service.
  final pulumi.Input<Map<String, String>>? tags;
  /// Describes user engagement tracking is enabled or disabled. Defaults to `false`.
  final pulumi.Input<bool>? userEngagementTrackingEnabled;
  /// (Optional) An `verification_records` block as defined below.
  final pulumi.Input<List<EmailServiceDomainVerificationRecord>>? verificationRecords;

  /// Creates a new [EmailServiceDomainState].
  /// [domainManagement] Describes how a Domains resource is being managed. Possible values are `AzureManaged`, `CustomerManaged`, `CustomerManagedInExchangeOnline`. Changing this forces a new Email Communication Service to be created.
  /// [emailServiceId] The resource ID of the Email Communication Service where the Domain belongs to. Changing this forces a new Email Communication Service to be created.
  /// [fromSenderDomain] P2 sender domain that is displayed to the email recipients [RFC 5322].
  /// [mailFromSenderDomain] P1 sender domain that is present on the email envelope [RFC 5321].
  /// [name] The name of the Email Communication Service resource. If `domain_management` is `AzureManaged`, the name must be `AzureManagedDomain`. Changing this forces a new Email Communication Service to be created.
  /// [tags] A mapping of tags which should be assigned to the Email Communication Service.
  /// [userEngagementTrackingEnabled] Describes user engagement tracking is enabled or disabled. Defaults to `false`.
  /// [verificationRecords] (Optional) An `verification_records` block as defined below.
  const EmailServiceDomainState({
    this.domainManagement,
    this.emailServiceId,
    this.fromSenderDomain,
    this.mailFromSenderDomain,
    this.name,
    this.tags,
    this.userEngagementTrackingEnabled,
    this.verificationRecords,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainManagement': ?domainManagement,
      'emailServiceId': ?emailServiceId,
      'fromSenderDomain': ?fromSenderDomain,
      'mailFromSenderDomain': ?mailFromSenderDomain,
      'name': ?name,
      'tags': ?tags,
      'userEngagementTrackingEnabled': ?userEngagementTrackingEnabled,
      'verificationRecords': ?pulumi.Input.mapOptionalInputValue<List<EmailServiceDomainVerificationRecord>, List<Map<String, dynamic>>>(verificationRecords, (value) => pulumi.Input.encodeList<EmailServiceDomainVerificationRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EmailServiceDomainState.fromMap(Map<String, dynamic> map) {
    return EmailServiceDomainState(
      domainManagement: (() { final guardedValue = map['domainManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailServiceId: (() { final guardedValue = map['emailServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fromSenderDomain: (() { final guardedValue = map['fromSenderDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mailFromSenderDomain: (() { final guardedValue = map['mailFromSenderDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userEngagementTrackingEnabled: (() { final guardedValue = map['userEngagementTrackingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      verificationRecords: (() { final guardedValue = map['verificationRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailServiceDomainVerificationRecord>(guardedValue, (value) => EmailServiceDomainVerificationRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

