// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NotificationServiceAccount resources.
class NotificationServiceAccountState {
  /// The email address of the Cloud Security Command Center Notification service account.
  final pulumi.Input<String?>? email;
  /// The Identity of the Cloud Security Command Center Notification service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  final pulumi.Input<String?>? member;
  /// The organization ID for which the service account should be generated. Exactly one of `organization` or `project` must be specified.
  final pulumi.Input<String?>? organization;
  /// The project ID or number for which the service account should be generated. Exactly one of `organization` or `project` must be specified. If omitted and `organization` is not specified, it defaults to the provider project.
  final pulumi.Input<String?>? project;

  /// Creates a new [NotificationServiceAccountState].
  /// [email] The email address of the Cloud Security Command Center Notification service account.
  /// [member] The Identity of the Cloud Security Command Center Notification service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  /// [organization] The organization ID for which the service account should be generated. Exactly one of `organization` or `project` must be specified.
  /// [project] The project ID or number for which the service account should be generated. Exactly one of `organization` or `project` must be specified. If omitted and `organization` is not specified, it defaults to the provider project.
  const NotificationServiceAccountState({
    this.email,
    this.member,
    this.organization,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'member': ?member,
      'organization': ?organization,
      'project': ?project,
    };
  }

  factory NotificationServiceAccountState.fromMap(Map<String, dynamic> map) {
    return NotificationServiceAccountState(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      member: (() { final guardedValue = map['member']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
