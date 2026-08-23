// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_email_service_domain_email_service_domain_args_doc}
/// The set of arguments for EmailServiceDomain.
/// {@endtemplate}
/// {@macro pulumi_communication_email_service_domain_email_service_domain_args_doc}
class EmailServiceDomainArgs {
  /// Describes how a Domains resource is being managed. Possible values are `AzureManaged`, `CustomerManaged`, `CustomerManagedInExchangeOnline`. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String> domainManagement;
  /// The resource ID of the Email Communication Service where the Domain belongs to. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String> emailServiceId;
  /// The name of the Email Communication Service resource. If `domainManagement` is `AzureManaged`, the name must be `AzureManagedDomain`. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the Email Communication Service.
  final pulumi.Input<Map<String, String>>? tags;
  /// Describes user engagement tracking is enabled or disabled. Defaults to `false`.
  final pulumi.Input<bool>? userEngagementTrackingEnabled;

  /// Creates a new [EmailServiceDomainArgs].
  /// [domainManagement] Describes how a Domains resource is being managed. Possible values are `AzureManaged`, `CustomerManaged`, `CustomerManagedInExchangeOnline`. Changing this forces a new Email Communication Service to be created.
  /// [emailServiceId] The resource ID of the Email Communication Service where the Domain belongs to. Changing this forces a new Email Communication Service to be created.
  /// [name] The name of the Email Communication Service resource. If `domainManagement` is `AzureManaged`, the name must be `AzureManagedDomain`. Changing this forces a new Email Communication Service to be created.
  /// [tags] A mapping of tags which should be assigned to the Email Communication Service.
  /// [userEngagementTrackingEnabled] Describes user engagement tracking is enabled or disabled. Defaults to `false`.
  const EmailServiceDomainArgs({
    required this.domainManagement,
    required this.emailServiceId,
    this.name,
    this.tags,
    this.userEngagementTrackingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainManagement': domainManagement,
      'emailServiceId': emailServiceId,
      'name': ?name,
      'tags': ?tags,
      'userEngagementTrackingEnabled': ?userEngagementTrackingEnabled,
    };
  }

  factory EmailServiceDomainArgs.fromMap(Map<String, dynamic> map) {
    return EmailServiceDomainArgs(
      domainManagement: pulumi.Input.fromValue(map['domainManagement'] as String),
      emailServiceId: pulumi.Input.fromValue(map['emailServiceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userEngagementTrackingEnabled: (() { final guardedValue = map['userEngagementTrackingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
