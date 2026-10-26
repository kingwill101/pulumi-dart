// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_notification_service_account_notification_service_account_args_doc}
/// The set of arguments for NotificationServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_notification_service_account_notification_service_account_args_doc}
class NotificationServiceAccountArgs {
  /// The organization ID for which the service account should be generated. Exactly one of `organization` or `project` must be specified.
  final pulumi.Input<String?>? organization;
  /// The project ID or number for which the service account should be generated. Exactly one of `organization` or `project` must be specified. If omitted and `organization` is not specified, it defaults to the provider project.
  final pulumi.Input<String?>? project;

  /// Creates a new [NotificationServiceAccountArgs].
  /// [organization] The organization ID for which the service account should be generated. Exactly one of `organization` or `project` must be specified.
  /// [project] The project ID or number for which the service account should be generated. Exactly one of `organization` or `project` must be specified. If omitted and `organization` is not specified, it defaults to the provider project.
  const NotificationServiceAccountArgs({
    this.organization,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organization': ?organization,
      'project': ?project,
    };
  }

  factory NotificationServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return NotificationServiceAccountArgs(
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
