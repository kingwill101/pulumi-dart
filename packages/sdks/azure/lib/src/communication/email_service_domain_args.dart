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
  /// The name of the Email Communication Service resource. If `domain_management` is `AzureManaged`, the name must be `AzureManagedDomain`. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the Email Communication Service.
  final pulumi.Input<Map<String, String>>? tags;
  /// Describes user engagement tracking is enabled or disabled. Defaults to `false`.
  final pulumi.Input<bool>? userEngagementTrackingEnabled;

  /// Creates a new [EmailServiceDomainArgs].
  /// [domainManagement] Describes how a Domains resource is being managed. Possible values are `AzureManaged`, `CustomerManaged`, `CustomerManagedInExchangeOnline`. Changing this forces a new Email Communication Service to be created.
  /// [emailServiceId] The resource ID of the Email Communication Service where the Domain belongs to. Changing this forces a new Email Communication Service to be created.
  /// [name] The name of the Email Communication Service resource. If `domain_management` is `AzureManaged`, the name must be `AzureManagedDomain`. Changing this forces a new Email Communication Service to be created.
  /// [tags] A mapping of tags which should be assigned to the Email Communication Service.
  /// [userEngagementTrackingEnabled] Describes user engagement tracking is enabled or disabled. Defaults to `false`.
  EmailServiceDomainArgs({
    required pulumi.Output<String> domainManagement,
    required pulumi.Output<String> emailServiceId,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? userEngagementTrackingEnabled,
  }) :
      domainManagement = pulumi.Input.asInput<String>(domainManagement),
      emailServiceId = pulumi.Input.asInput<String>(emailServiceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userEngagementTrackingEnabled = pulumi.Input.asOptionalInput<bool>(userEngagementTrackingEnabled);

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
      domainManagement: pulumi.Output.create<String>(map['domainManagement'] as String),
      emailServiceId: pulumi.Output.create<String>(map['emailServiceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userEngagementTrackingEnabled: map['userEngagementTrackingEnabled'] == null ? null : pulumi.Output.create<bool>(map['userEngagementTrackingEnabled'] as bool),
    );
  }
}

