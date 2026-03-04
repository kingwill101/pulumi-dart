// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_approval_settings_enrolled_service.dart';

/// {@template pulumi_projects_access_approval_settings_access_approval_settings_args_doc}
/// The set of arguments for AccessApprovalSettings.
/// {@endtemplate}
/// {@macro pulumi_projects_access_approval_settings_access_approval_settings_args_doc}
class AccessApprovalSettingsArgs {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty active_key_version indicates that a Google-managed key should be used for signing.
  /// This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set.
  final pulumi.Input<String>? activeKeyVersion;

  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can only be done on an all or nothing basis.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  final pulumi.Input<List<AccessApprovalSettingsEnrolledService>>
  enrolledServices;

  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  final pulumi.Input<List<String>>? notificationEmails;

  /// (Optional, Deprecated)
  /// Project id.
  ///
  /// &gt; **Warning:** `project` is deprecated and will be removed in a future major release. Use `project_id` instead.
  final pulumi.Input<String>? project;

  /// ID of the project of the access approval settings.
  final pulumi.Input<String> projectId;

  /// Creates a new [AccessApprovalSettingsArgs].
  /// [activeKeyVersion] The asymmetric crypto key version to use for signing approval requests.
  /// [enrolledServices] A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// [notificationEmails] A list of email addresses to which notifications relating to approval requests should be sent.
  /// [project] (Optional, Deprecated)
  /// [projectId] ID of the project of the access approval settings.
  AccessApprovalSettingsArgs({
    this.activeKeyVersion,
    required this.enrolledServices,
    this.notificationEmails,
    this.project,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeKeyVersion': ?activeKeyVersion,
      'enrolledServices':
          pulumi.Input.mapInputValue<
            List<AccessApprovalSettingsEnrolledService>,
            List<Map<String, dynamic>>
          >(
            enrolledServices,
            (value) =>
                pulumi.Input.encodeList<
                  AccessApprovalSettingsEnrolledService,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'notificationEmails': ?notificationEmails,
      'project': ?project,
      'projectId': projectId,
    };
  }

  factory AccessApprovalSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AccessApprovalSettingsArgs(
      activeKeyVersion: (() {
        final guardedValue = map['activeKeyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enrolledServices: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AccessApprovalSettingsEnrolledService>(
          map['enrolledServices']!,
          (value) => AccessApprovalSettingsEnrolledService.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      notificationEmails: (() {
        final guardedValue = map['notificationEmails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}
