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
  EmailServiceDomainState({
    pulumi.Output<String>? domainManagement,
    pulumi.Output<String>? emailServiceId,
    pulumi.Output<String>? fromSenderDomain,
    pulumi.Output<String>? mailFromSenderDomain,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? userEngagementTrackingEnabled,
    pulumi.Output<List<EmailServiceDomainVerificationRecord>>? verificationRecords,
  }) :
      domainManagement = pulumi.Input.asOptionalInput<String>(domainManagement),
      emailServiceId = pulumi.Input.asOptionalInput<String>(emailServiceId),
      fromSenderDomain = pulumi.Input.asOptionalInput<String>(fromSenderDomain),
      mailFromSenderDomain = pulumi.Input.asOptionalInput<String>(mailFromSenderDomain),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userEngagementTrackingEnabled = pulumi.Input.asOptionalInput<bool>(userEngagementTrackingEnabled),
      verificationRecords = pulumi.Input.asOptionalInput<List<EmailServiceDomainVerificationRecord>>(verificationRecords);

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
      domainManagement: map['domainManagement'] == null ? null : pulumi.Output.create<String>(map['domainManagement'] as String),
      emailServiceId: map['emailServiceId'] == null ? null : pulumi.Output.create<String>(map['emailServiceId'] as String),
      fromSenderDomain: map['fromSenderDomain'] == null ? null : pulumi.Output.create<String>(map['fromSenderDomain'] as String),
      mailFromSenderDomain: map['mailFromSenderDomain'] == null ? null : pulumi.Output.create<String>(map['mailFromSenderDomain'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userEngagementTrackingEnabled: map['userEngagementTrackingEnabled'] == null ? null : pulumi.Output.create<bool>(map['userEngagementTrackingEnabled'] as bool),
      verificationRecords: map['verificationRecords'] == null ? null : pulumi.Output.create<List<EmailServiceDomainVerificationRecord>>(pulumi.Input.decodeList<EmailServiceDomainVerificationRecord>(map['verificationRecords'], (value) => EmailServiceDomainVerificationRecord.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

