// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_email_service_domain_sender_username_email_service_domain_sender_username_args_doc}
/// The set of arguments for EmailServiceDomainSenderUsername.
/// {@endtemplate}
/// {@macro pulumi_communication_email_service_domain_sender_username_email_service_domain_sender_username_args_doc}
class EmailServiceDomainSenderUsernameArgs {
  /// The display name for the Email Communication Service Domain Sender Username resource.
  final pulumi.Input<String>? displayName;
  /// The ID of the Email Communication Service Domain resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> emailServiceDomainId;
  /// The name of the Email Communication Service Domain Sender Username resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [EmailServiceDomainSenderUsernameArgs].
  /// [displayName] The display name for the Email Communication Service Domain Sender Username resource.
  /// [emailServiceDomainId] The ID of the Email Communication Service Domain resource. Changing this forces a new resource to be created.
  /// [name] The name of the Email Communication Service Domain Sender Username resource. Changing this forces a new resource to be created.
  const EmailServiceDomainSenderUsernameArgs({
    this.displayName,
    required this.emailServiceDomainId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'emailServiceDomainId': emailServiceDomainId,
      'name': ?name,
    };
  }

  factory EmailServiceDomainSenderUsernameArgs.fromMap(Map<String, dynamic> map) {
    return EmailServiceDomainSenderUsernameArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailServiceDomainId: pulumi.Input.fromValue(map['emailServiceDomainId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

